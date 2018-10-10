var cluster = require('cluster');
var fs = require('fs');
var api = require('ipfs-api')

// worker functions
var workers = {
    'fs': function () {
        var i = 0;
        while (true) {
            i++;            
            fs.writeFileSync('test.txt', String(i)); 
            process.send(i);
        }        
    },
    'ipfs': async function () {
        var ipfs = api('localhost', '5001', {protocol: 'http'});
        var i = 0;
        while (true) {
            i++;
            await ipfs.files.write('/test.txt',Buffer.from(''+i),{'create':true});
            await ipfs.files.flush('/test.txt');
            process.send(i);
        }
    },
    'ipns': async function() {
        var ipfs = api('localhost', '5001', {protocol: 'http'})
        var i = 0;
        while (true) {
            i++;
            try {
                var hash = (await ipfs.files.stat('/test.txt')).hash;
                await ipfs.name.publish(hash,{key:'myroot'});
                process.send(i);
            } finally { /* ignore exceptions when '/test.txt' not yet available from 'ipfs' worker */ }
        }
    }
};

// spawn each worker
if (cluster.isMaster) {
    var fs_worker = cluster.fork();
    var ipfs_worker = cluster.fork();
    var ipns_worker = cluster.fork();

    fs_worker.send('fs');
    ipfs_worker.send('ipfs');
    ipns_worker.send('ipns');

    // reporting
    var fs_i = 0;
    var ipfs_i = 0;

    fs_worker.on('message', i => fs_i = i);
    ipfs_worker.on('message', i => ipfs_i = i);
    ipns_worker.on('message', i => console.log('counts :: fs:' + fs_i + ' ipfs:' + ipfs_i + ' ipns:' + i));
} else {
    // in forked process, respect work request
    process.on('message', code => workers[code]());
}

