# ipfs-tutorial -- tutorial notes for a meetup on IPFS

## [What is IPFS](https://en.wikipedia.org/wiki/InterPlanetary_File_System#Description)

* a peer-to-peer distributed file system 
* connect all computing devices with the same system of files
* could be seen as a single BitTorrent swarm *[1]*
* exchanging objects within one Git repository *[2]*
* content-addressed block storage model
* content-addressed hyperlinks.
* incentivized block exchange *[3]*
* no single point of failure *[4]*
* nodes do not need to trust each other

> ### *[1]* BitTorrent swarm
>
> A swarm is the entire network of people connected to a single torrent: all the peers sharing pieces of the torrent.  Provides multi-region redundancy.
>
> The whole IPFS is a single torrent swarm, except no one has the complete torrent.

> ### *[2]* Content-Addressable like Git
>
> Git is a key-value store.  
>
> The keys are hashes of the content being stored: the files, the objects.  
>
> Git has provision for special tree objects which contain metadata to group other Git objects together.  The trees themselves are content with a hash as a key.
>
> IPFS is content-addressed block storage that all comprise a DAG:  each piece of content is somewhere in this graph.

> ### *[3]* IPFS is incentivized
>
> I don't think it is.  [Others want to know too.](https://steemit.com/ipfs/@markopaasila/how-is-ipfs-incentivized)
>
> [FileCoin](https://medium.com/@robertgreenfieldiv/simplifying-the-filecoin-whitepaper-395893eddcf):
>
> * turns cloud storage into an algorithmic market
> * earn by providing storage to clients
> * incentive layer on top of IPFS
> * "storage miners"--given token rewards--offer disk space, pledge their storage by depositing collateral proportional to it, provide proof of storage
> * "retrieval miners" retrieve data on behalf of client: the miner that can retrieve the fastest ends up with the tokens

> ### *[4]* No single point of failure
>
> In fact, unless you're guaranteed a node is pinning your data on IPFS, your data will end up vanishing from the swarm.  Data can be pinned by multiple nodes.  IPFS incentivization comes into play here.

## CLI Tutorial

### Get the tutorial files

* clone https://github.com/BlockDevsUnited/ipfs-tutorial
  * unless explicitly stated, all commands in this tutorial are run in a terminal in this repo's folder

### Install IPFS

* install IPFS from https://dist.ipfs.io/#go-ipfs
* unzip IPFS so it's in your PATH
* test IPFS CLI is available; in your terminal type: `ipfs`
  * check the above returned a list of commands

### Initialize and start

* initialize IPFS repository: `ipfs init`
  * now you have a folder in your user folder: **~/.ipfs**
  * this is your repository
  * you can tell IPFS to use some other folder with environment variable **IPFS_PATH**
* Our IPFS is still offline
  * if you try running IPFS CLI commands you will get **Error: api not running**
    * e.g. try `ipfs key list -l`
* let's go beyond the local repo, let's connect to nearby peers; in another terminal window start the IPFS daemon: `ipfs daemon`
  *  observe the port numbers for "API server listening on" and "Gateway (readonly)"
  * are they 5001 and 8080 respectively?
  * if not, for the remainder of this tutorial use what's reported by your daemon: wherever you see 5001 substitute your API port and wherever you see 8080 substitute your gateway port

> later on in the tutorial we'll discover IPNS, and we'll discover that IPNS is very slow right now.  To speed up IPNS functionality we want to start the daemon with: `ipfs daemon --enable-namesys-pubsub`

* port 5001 is the API port; the **webui** as well as the CLI uses this port
* port 8080 is the localhost IPFS gateway--localhost version of the IPFS CDN: this is how we access IPFS objects, by providing a [multiaddr](https://github.com/multiformats/multiaddr), e.g.: */ipfs/\<hash\>*

> some other IPFS gateways exposed to the Internet:
> * https://ipfs.infura.io
> * https://ipfs.io

* each gateway needs to be furnished with an IPFS or IPNS [multiaddr](https://github.com/multiformats/multiaddr) to serve content; i.e. */ipfs/Qmay8A2gCZkn7dehD2MAEUUPNPQ8TaXmTu1aGvKXi8fC7q* or */ipns/QmQJvfVVhtPhYKujgR8BbkGSv5cM7fnyscLn7WCX86d6q6*
* double check we're online before continuing: `ipfs swarm peers`
* to get a better picture, go to your node's **webui** (http://localhost:5001/webui), **Connections** section

### Basic Commands

* read the IPFS readme: `ipfs cat /ipfs/QmS4ustL54uo8FzR9455qaxZwuMiUhyvMcX9Ba8nUH4uVv/readme`
  * this concatenates one of the files on the network, notice the **multiaddr**
  * notice the IPFS object *QmS4ustL54uo8FzR9455qaxZwuMiUhyvMcX9Ba8nUH4uVv* was a folder
* see other files in that folder: `ipfs ls /ipfs/QmS4ustL54uo8FzR9455qaxZwuMiUhyvMcX9Ba8nUH4uVv`
* get the hash of the *readme* direct: `ipfs resolve /ipfs/QmS4ustL54uo8FzR9455qaxZwuMiUhyvMcX9Ba8nUH4uVv/readme`
  * observe the result: **/ipfs/QmPZ9gcCEpqKTo6aq61g2nXGUhM4iCL3ewB6LDXZCtioEB**
  * I can confidently say what hash that *readme* has as it's guaranteed by the content addressing
  * any change to the *readme* would have changed to containing folder's hash as well
  * unfortunately we cannot tell what other versions of this *readme* exist (see **files** and **IPNS** later)
* read the IPFS readme, direct: `ipfs cat /ipfs/QmPZ9gcCEpqKTo6aq61g2nXGUhM4iCL3ewB6LDXZCtioEB`

* let's check on this other object: `ipfs ls /ipfs/QmaiJjHi59LSF3d57Jfmo7MJaXzsDhwszcKnYE8F4WUEi7`
  * ok so that's a folder with some CSS file in it
* let's add the **assets** folder from our local file system into IPFS: `ipfs add -r assets`
  * notice the **added QmaiJjHi59LSF3d57Jfmo7MJaXzsDhwszcKnYE8F4WUEi7 assets** line
  * that's the same hash as the previous step
  * so now we know that QmaiJjHi59LSF3d57Jfmo7MJaXzsDhwszcKnYE8F4WUEi7 is our **assets** folder
  * it already existed in IPFS, and we can always recalculate the address from the content:  content-addressing

### Pinning

* the swarm can address any content, but that doesn't mean the content is available
* the content could have been garbage collected by any peers that hosted it
* peers will host content based on heuristics and garbage collect should they need resources for other content:  expecting the content remains distributed elsewhere
* the content can always be re-added--to the same address--but how to guarantee it's on the network?
* pinning objects on a node is how we guarantee the content is available on the network--as long as our node is connected to the swarm
* see all your pinned content:  `ipfs pin ls`
  * should at least have one *recursive*--meaning *directory*--pin  since last add
  * every object you explicitly add to your repository via the **add** command is pinned to your node by default
* my output:
```
  QmPy6FhkocPXdA6eYEGtS6qULk1nxf5c5mvHAEYkLEpHJA indirect
  QmRgpYCZJKMZsj71s3YeewUda2CAY4VSYJv2dskB1hTTbT indirect
  QmSseir6cjBmXXpZBMXmZpRpkKUNnb2phWBSxYSYx7v2YP indirect
  QmXgqKTbzdh83pQtKFb19SpMCpDDcKR2ujqk3pKph9aCNF indirect
  QmZTR5bcpQD7cFgTorqxZDYaew1Wqgfbd2ud9QqGPAkK2V indirect
  Qmay8A2gCZkn7dehD2MAEUUPNPQ8TaXmTu1aGvKXi8fC7q recursive
  QmejvEPop4D7YUadeGqYWmZxHhLc4JBUCzJJHWMzdcMe2y indirect
  QmTSdi4B5p4yzFoF1xLuVP1MyibKvdybKDdvvhPWHpvgnd recursive
  QmUNLLsPACCz1vLxQVkXqqLX5R1X345qqfHbsf67hvA3Nn recursive
  QmaiJjHi59LSF3d57Jfmo7MJaXzsDhwszcKnYE8F4WUEi7 recursive // <<-- this is the /assets folder
  QmQ4RxVg5NCAh1iHWhtkZeS2bVMpMo44pquFD2BthnVndt indirect
  QmQrYcqej9dVDAaUUxMvSqenXsPVh2jmZb9qfyfU3MABAr indirect
  QmSBXgu23B6wbx5mERMyiNd34zBksCvSEpN24Zawa1uq1D indirect
  QmTwvEXf5j4AANE5WfnG2T4127ihnWFZYJErtSW4BXwC9q recursive
  QmYCvbfNbCwFR45HiNP45rwJgvatpiW38D961L5qAhUM5Y indirect
  QmS4ustL54uo8FzR9455qaxZwuMiUhyvMcX9Ba8nUH4uVv recursive // <<-- this is the folder with the readme
  QmUptcAqXfPXg9MP679nt27Lu3FxGUvw7rAHEuUzSPizsn indirect
  QmQfAAfpxRsZFZyQgCk1Z5hhATV4q38HtWdzppUndCGhoy indirect
  QmY5heUM5qgRubMDD1og9fhCPA6QdkMp3QCwd4s7gJsyE7 indirect
  QmZJTXsxBxbFTMMjiLsXQCusv4mb5oe8kABoX1PZsWwwva indirect
  QmZn57nVwSYhG4HUUQ9oayBy6vXeSaij35xNwisMW8Loex indirect
  Qmev99Uxh136hnJWybJdigBkuQTyTpbTQN9GU78jRXvfKR recursive
  Qmf412jQZiuVUtdgnB36FXFX7xg5V6KEbSJ4dpQuhkLyfD recursive
  QmNiK9hx3qHxWurzVL12x88wVSNftYUHBXQKTMFb57oYWz indirect
  QmQ5vhrL7uv6tuoN9KeVBwd4PwfQkXdVVmDLUZuTNxqgvm indirect
  QmRGGtSzYHD69iFRLrPthG6qAmPFpCNVt92jSx4n3HFyC9 indirect
  QmT8onRUfPgvkoPMdMvCHPYxh98iKCfFkBYM1ufYpnkHJn indirect
  Qmd286K6pohQcTKYqnS1YhWrCiS4gz7Xi34sdwMe9USZ7u indirect
  Qmdkgpf2U7YuYcKveCPLSaq7sm5Q2i8nCqUiPom8oaesem indirect
  QmfDA8enA7y8PhzahwbRu91ku4tiQTw3ayPgsFHGPmLJPq recursive
  QmPEKipMh6LsXzvtLxunSPP7ZsBM8y9xQ2SQQwBXy5UY6e indirect
  QmPZ9gcCEpqKTo6aq61g2nXGUhM4iCL3ewB6LDXZCtioEB indirect // <<-- this is the readme file (notice indirect)
  QmRa57sp5M1iouDtNoZscfeHi73JZFxsHpuqvNEug7zmq2 indirect
  QmUKwS1iVNdB6sARg2WesEPhKeg6PMaJMuwMn5ASourrnb indirect
  QmVCkd3xfeDjniP1nLYgCHznFjkPZ7UwgWiAKP1PSsENgA indirect // <<-- this is the CSS file (notice indirect)
```
* the two *recursive* pins were explicitly added with the **-r** flag (recursive)
* the two *indirect* pins are object pinned indirectly because they are under some *recursive* pin
* we know the four hashes above just by working with them, what about the others?  should they be unpinned and made available for garbage collection?  what are they?
  * we cannot tell from IPFS objects themselves; the **hash** is what they are; the metadata we associate   with these objects in our human-readable world is not available here
  * we also cannot tell the version of an object; the CSS file could have gone through many revisions--we're just looking at the content of one of these revisions, no concept of modification history
* IPFS does offer at least two features to provide human-readable reference metadata to IPFS objects (we'll talk about later in this tutorial)
* back to pinning, a funny reddit: https://www.reddit.com/r/ipfs/comments/2xme48/lets_share_some_hashes/
  * who ever started this reddit didn't understand pinning
  * you can't just host a picture on your local IPFS node, publish the hash on reddit, then turn off your computer :)
* [Infura](https://infura.io/)--a gateway Ethereum and IPFS--offers pinning on their IPFS gateway:  https://ethereum.stackexchange.com/questions/46638/how-long-does-infura-store-a-file-on-ipfs

### Human Readable References

* we dealt with IPFS objects and their addresses--content hashes
* we'd like to assign human-readable references to this content
* we'd like to track the latest version of said content
* two options:
  1. IPFS **files** API
  1. IPNS -- the IPFS naming system

#### IPFS **files** API

* the **files** API is available via: `ipfs files --help`
* your node's **webui** (http://localhost:5001/webui) has a **Files** section, this is using the same **files** API
  * you can manipulate the files using either or
* the **files** API is a metadata layer on top of the content addressed objects we worked with before
* the **files** API doesn't know about the objects already in our node's repo since they weren't added via the **files** layer: no metadata was provided
* our node constantly keeps tab on the latest and greatest hashes that comprise the "file system" abstracted by this **files** API
* in the **webui** in the **Files** section, click **Create Folder**, name it "stuff"
* double click "stuff"
* **Upload** the **assets/semantic.min.css** file from this tutorial into "stuff"
* now check "/stuff" on the command line: `ipfs files stat /stuff`
  * we see the now familiar hash, this represents the folder /stuff on your node
* we can list the contents of /stuff via it's hash: `ipfs ls <hash from stat call above>`
  * notice the hash for the CSS file is different than what we saw earlier in tutorial
  * perhaps it's storing some extra **files** API metadata with this object?
  * `ipfs cat <hash from ls call above>` still shows the CSS contents
* we can list the contents of /stuff via files: `ipfs files ls /stuff`
* we can see the contents of the file: `ipfs files read /stuff/semantic.min.css`
* let's add the **client.html** file to /stuff: `ipfs files write --create /stuff/client.html client.html`
* check in the **webui** the file was added
* notice that the hash of /stuff necessairly changed from previous run of the same command: `ipfs files stat /stuff`
* we can still get the contents of the old hash, temporarily (left as excercise)
* warning: files added may not have been persisted to disk; if you restart your daemon process and revisit "/stuff" in the **webui** you will notice the **client.html** file might not be there.
  * after writing a file with the API you want to additionally flush it:  similar to other file I/O libraries
  * we'll see this in our code later in the tutorial
* you now have a human readable approach to work with the latest version of your files on your local node; you can share snapshots of these files via their hashes--as per **ipfs files stat** command

#### IPNS

* IPNS allows distribution of well known hashes that are references to whatever IPFS objects we choose to publish to them
* whereby **files** API is node-local and the node constantly updates IPFS references to **files**, IPNS is explicit; requires an explicit publish of a target hash to the IPNS hash
* IPNS names are hashes; the IPNS hashes available to be publish-targets are based off of a PKI system on your node
  * your node has a *keystore* (~/.ipfs/keystore)
  * it has public keys that are hashed comprising the IPNS "addresses"
  * it has private keys that are used to verify you're allowed to publish to the public IPNS "addresses"
* list all the IPNS hashes on your node: `ipfs key list -l`
  * you see **self**, this is your node's IPNS address
  * you can publish whatever you want to it
* generate another IPNS hash with a human-readable name of **myroot**: `ipfs key gen --type=rsa --size=2048 myroot`
* list all the IPNS hashes on your node: `ipfs key list -l`
  * now you see both
  * you can now also publish to **myroot** and share the listed IPNS hash with the world: **myroot** on my node is **/ipns/QmQJvfVVhtPhYKujgR8BbkGSv5cM7fnyscLn7WCX86d6q6**
* you can re-publish whatever you want to **self** or **myroot**, the referenced object hash will be updated but the IPNS hash will stay the same

#### IPFS **files**, pinning, and IPNS

* let's publish the current snapshot of our whole IPFS **files** filesystem to IPNS
* get the file system hash: `ipfs files stat /`
* we're about to publish the returned hash to IPNS, what about pinning?
  * the **files** API doesn't explicitly pin any hashes
  * the node knows not to garbage collect the latest IPFS objects comprising the files, but all older versions are game for GC
  * if we publish the current '/' hash to IPNS and we update any file, the '/' hash we published will be historic
  * unless we pin it, it's game for GC
* explicitly pin the object: `ipfs pin add <hash from stat command above>`
* publish the '/' to **myroot** adress on IPNS: `ipfs name publish --key=myroot <hash from stat command above>`
  * be patient
  * takes a long time
  * recall the "--enable-namesys-pubsub" option to be specified with **ipfs daemon** earlier?  That's an attempt to speed up IPNS
* now we can resolve our file system off of this snapshot of '/': `ipfs ls /ipns/<hash "published to" above>/stuff`
  * notice the IPNS **multiaddr**
  * the CSS file should be listed
* if we update our /stuff folder with IPFS **files** API, the results from our IPNS reference will still be the old snapshot, until we re-snapshot with another publish.

#### Speed

* local file system is fast
* IPFS **files** API is fast
* IPFS is fastish
* IPNS is slow
* need to contend with these speed differences in our code

## Code Tutorial

* assumption: Node.js installed on your system
* two code files in this distibution
  * **producer.js**
    * Node.js "backend" code that generates content
    * starts up three workers:
      1. increment number from 0 in tight loop and write number to file system (./test.txt)
      1. another tight loop incrementing another number from 0 in tight loop and write (and flush) the number out via IPFS **files** API (/test.txt)
      1. final tight loop taking the IPFS file from the previous worker and publishing it to IPNS
    * the master thread console-logs status of where each iteration stands--updated every IPNS publish (slowly)
    * uses IPFS API via https://github.com/ipfs/js-ipfs-api#importing-the-module-and-usage
    * need to `npm install` before running this code
    * after installing, simply `node producer.js`
  * **client.html**
    * basic HTML file fetching a bunch of information from IPFS
    * styled using *semantic.min.css* from IPFS: IPFS as a CDN
    * allows looking at the latest '/test.txt' contents from an IPFS node as specified by the host/port
    * the specified node has its API queried for the hash of the latest '/test.txt' in its **files**
      * note that the `ipfs daemon` has to be configured to allow CORS:
        * turn off daemon
        * `ipfs config Addresses.API /ip4/0.0.0.0/tcp/5001`
        * `ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin "[\"*\"]"`
        * `ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods "[\"PUT\", \"GET\", \"POST\"]"`
        * turn on daemon
    * "Latest IPFS" is the value from the IPFS node as per above
    * "Latest IPNS" is the value from my specific hard-coded IPNS hash
