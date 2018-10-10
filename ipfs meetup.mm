<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="ipfs meetup" FOLDED="false" ID="ID_1225766862" CREATED="1447858388793" MODIFIED="1536620147645" LINK="."><hook NAME="MapStyle">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<font BOLD="false"/>
<node TEXT="install ipfs" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1559610215" CREATED="1536620173519" MODIFIED="1536620722700">
<font SIZE="10" BOLD="true"/>
<node TEXT="install from" ID="ID_1938820485" CREATED="1536620605998" MODIFIED="1536620708453">
<font BOLD="false"/>
<node TEXT="https://dist.ipfs.io/#go-ipfs" ID="ID_899110379" CREATED="1536620595028" MODIFIED="1536621033161" LINK="https://dist.ipfs.io/#go-ipfs">
<font SIZE="10"/>
</node>
</node>
<node TEXT="unzip so it&apos;s on your PATH" ID="ID_461065227" CREATED="1536621073112" MODIFIED="1536621081253"/>
<node TEXT="open terminal and try IPFS CLI" ID="ID_810260655" CREATED="1536621418182" MODIFIED="1536621431107">
<node TEXT="ipfs" ID="ID_884883440" CREATED="1536621432175" MODIFIED="1536622025099" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
</node>
</node>
<node TEXT="basic tutorial" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_973633495" CREATED="1536620183869" MODIFIED="1536620722701">
<font SIZE="10" BOLD="true"/>
<node TEXT="make a temporary folder for our work" ID="ID_185083881" CREATED="1536621445519" MODIFIED="1536621454734">
<node TEXT="cd $TMP&#xa;mkdir tryipfs&#xa;cd tryipfs" ID="ID_1473103445" CREATED="1536621325311" MODIFIED="1536621735332" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
</node>
<node TEXT="initialize IPFS repository" ID="ID_1480468262" CREATED="1536621541290" MODIFIED="1536621621871">
<node TEXT="ipfs init" ID="ID_91865523" CREATED="1536621623337" MODIFIED="1536621633476" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
<node TEXT="note now you have a folder in your user folder ~/.ipfs" ID="ID_1180733748" CREATED="1536621859415" MODIFIED="1536621979628" COLOR="#666666"/>
<node TEXT="this is your repository" ID="ID_1866736194" CREATED="1536621877223" MODIFIED="1536621979630" COLOR="#666666"/>
<node ID="ID_1612818887" CREATED="1536621880517" MODIFIED="1536621979630" COLOR="#666666"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      you can tell <i>ipfs</i>&#160;to use some other folder with environment variable IPFS_PATH
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="start the IPFS daemon" ID="ID_1881676498" CREATED="1539106229642" MODIFIED="1539106237240">
<node TEXT="ipfs daemon" ID="ID_1979559971" CREATED="1539106237250" MODIFIED="1539106307442" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
<node TEXT="go beyond local repo, connect to nearby peers (in another terminal)" ID="ID_1956289732" CREATED="1536622673273" MODIFIED="1536622850333"/>
<node TEXT="otherwise:  &quot;Error: api not running&quot;" ID="ID_80176931" CREATED="1539106337582" MODIFIED="1539106341941"/>
<node TEXT="observe the port numbers for &quot;API server listening on&quot; and &quot;Gateway (readonly); are they 5001 and 8080 respectively?  If not, use what&apos;s reported by your daemon." ID="ID_624828336" CREATED="1536622693763" MODIFIED="1536623248077" COLOR="#666666"/>
</node>
<node TEXT="ipfs daemon --enable-namesys-pubsub" ID="ID_358703412" CREATED="1539137718861" MODIFIED="1539137723729" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
</node>
<node TEXT="read the readme" ID="ID_45109123" CREATED="1536621635492" MODIFIED="1536622108772">
<node TEXT="ipfs cat /ipfs/QmS4ustL54uo8FzR9455qaxZwuMiUhyvMcX9Ba8nUH4uVv/readme" ID="ID_479540295" CREATED="1536622109837" MODIFIED="1536622254368" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
<node TEXT="this dumps one of the files that your repo was initialized with" ID="ID_481033006" CREATED="1536622114772" MODIFIED="1536622235725" COLOR="#666666"/>
<node TEXT="ignore the &quot;alpha software&quot; ;)" ID="ID_211221569" CREATED="1536622236864" MODIFIED="1536622248879" COLOR="#666666"/>
</node>
</node>
<node TEXT="list other files in that folder" ID="ID_481692943" CREATED="1536622504790" MODIFIED="1536622534865">
<node TEXT="ipfs ls /ipfs/QmS4ustL54uo8FzR9455qaxZwuMiUhyvMcX9Ba8nUH4uVv" ID="ID_1399401327" CREATED="1536622537782" MODIFIED="1536622584820" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
</node>
<node TEXT="list local peers (in original terminal)" ID="ID_1437853118" CREATED="1536622810648" MODIFIED="1536622857493">
<node TEXT="ipfs swarm peers" ID="ID_1211846078" CREATED="1536622815834" MODIFIED="1536622837799" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
</node>
<node TEXT="get an item from the network" ID="ID_918470038" CREATED="1536622876462" MODIFIED="1536622894248">
<node TEXT="ipfs get /ipfs/QmW2WQi7j6c7UgJTarActp7tDNikE4B2qXtFCfLPdsgaTQ/cat.jpg" ID="ID_1970150935" CREATED="1536622986068" MODIFIED="1536623911833" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
</node>
<node TEXT="open the cat image in your working temp folder" ID="ID_858893133" CREATED="1536623002814" MODIFIED="1536623012027">
<node TEXT="another way is to use IPFS gateway with your browser:&#xa;&#xa;https://ipfs.io/ipfs/QmW2WQi7j6c7UgJTarActp7tDNikE4B2qXtFCfLPdsgaTQ/cat.jpg" ID="ID_384460961" CREATED="1536623515444" MODIFIED="1536623646216" COLOR="#666666"/>
</node>
<node ID="ID_264713538" CREATED="1536623012534" MODIFIED="1536624084283"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      let's add a file, create a file named <i>hello.txt</i>&#160;with some text, maybe &quot;Hello world&quot;, then add to the network
    </p>
  </body>
</html>
</richcontent>
<node TEXT="ipfs add .\hello.txt" ID="ID_587481543" CREATED="1536624090606" MODIFIED="1536624110400" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
</node>
<node TEXT="verify the file is available on the network, copy the hash returned and use your browser:" ID="ID_627564883" CREATED="1536624114573" MODIFIED="1536624148909">
<node TEXT="https://ipfs.io/ipfs/&lt;HASH&gt;" ID="ID_1842095060" CREATED="1536624150491" MODIFIED="1536624167157"/>
</node>
<node TEXT="the file is also available by your local gateway" ID="ID_1597684863" CREATED="1536624210187" MODIFIED="1536624218788">
<node TEXT="http://127.0.0.1:8080/ipfs/&lt;HASH&gt;" ID="ID_1555514486" CREATED="1536624219921" MODIFIED="1536624225278">
<node TEXT="in fact, the file is pinned in your local gateway, it will not be garbage collected, it will be available on the network as long as your gateway is part of the network--or the file gets pinned by another gateway, which is unlikely." ID="ID_463159648" CREATED="1536624229911" MODIFIED="1536624285974" COLOR="#666666"/>
</node>
</node>
<node TEXT="there is a nice UI console for working with your gateway instance" ID="ID_1521791532" CREATED="1536624411791" MODIFIED="1536624470358">
<node TEXT="http://localhost:5001/webui" ID="ID_1948591877" CREATED="1536624471345" MODIFIED="1536624475612"/>
<node TEXT="check out the &quot;Connections&quot;" ID="ID_1643191936" CREATED="1536624475994" MODIFIED="1536624485705" COLOR="#666666"/>
</node>
</node>
<node TEXT="create a folder" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1670427176" CREATED="1536620284128" MODIFIED="1536620722701">
<font SIZE="10" BOLD="true"/>
<node TEXT="with gateway webui go to files and create a new folder &quot;stuff&quot;" ID="ID_1824464085" CREATED="1536624732492" MODIFIED="1536624753082"/>
<node TEXT="right click the &quot;stuff&quot; folder and copy the hash" ID="ID_1001873159" CREATED="1536624753498" MODIFIED="1536624836924"/>
<node TEXT="ipfs ls &lt;hash&gt;" ID="ID_1069061662" CREATED="1539107406957" MODIFIED="1539107416739" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="observe empty" ID="ID_784010130" CREATED="1539107417809" MODIFIED="1539107423559"/>
<node TEXT="Add a file to the folder using Web UI" ID="ID_709344776" CREATED="1539107423906" MODIFIED="1539107435782"/>
<node TEXT="ipfs ls &lt;hash&gt;" ID="ID_924957645" CREATED="1539107436456" MODIFIED="1539107446849" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="nothing?  remember IPFS uses content addressing.  Even though Web page says we have file hello.txt in folder &apos;stuff&apos;, that&apos;s just extra metadata kept outside of IPFS" ID="ID_1880723807" CREATED="1539107447281" MODIFIED="1539107503686"/>
<node TEXT="right click the &quot;stuff&quot; folder and copy the hash again" ID="ID_1929611477" CREATED="1539107504586" MODIFIED="1539107528103"/>
<node TEXT="ipfs ls &lt;new hash&gt;" ID="ID_929750347" CREATED="1539107535583" MODIFIED="1539107542950" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="now you see the file" ID="ID_620103533" CREATED="1539107528300" MODIFIED="1539107533984"/>
</node>
<node TEXT="pin folder" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1275583773" CREATED="1536622918986" MODIFIED="1536622930296">
<font SIZE="10" BOLD="true"/>
<node TEXT="funny redit" ID="ID_1291364755" CREATED="1536623137175" MODIFIED="1536623141973" LINK="https://www.reddit.com/r/ipfs/comments/2xme48/lets_share_some_hashes/">
<node TEXT="hashes aren&apos;t stored indefinitelly" ID="ID_945067182" CREATED="1536623143631" MODIFIED="1536623251233" COLOR="#666666"/>
<node TEXT="there currently is no incentive system in place" ID="ID_604577894" CREATED="1536623155297" MODIFIED="1536623251236" COLOR="#666666"/>
<node TEXT="to guarantee that a file is on the network explicitly pin the file on a node you own" ID="ID_442399503" CREATED="1536623173493" MODIFIED="1536623251238" COLOR="#666666"/>
<node TEXT="unpinned files are available for garbage collection" ID="ID_147151698" CREATED="1536623227607" MODIFIED="1536623251239" COLOR="#666666"/>
</node>
</node>
<node TEXT="add files to folder" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_53529413" CREATED="1536620289890" MODIFIED="1536620722701">
<font SIZE="10" BOLD="true"/>
<node TEXT="in $TMP" ID="ID_1174202361" CREATED="1539107878046" MODIFIED="1539107925235"/>
<node TEXT="ipfs get &lt;stuff folder hash&gt;" ID="ID_1179965244" CREATED="1539107925669" MODIFIED="1539107937768" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="ls" ID="ID_447225226" CREATED="1539107938371" MODIFIED="1539107966963" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="notice it&apos;s not called &apos;stuff&apos; on your file system.  let&apos;s naively append to the folder" ID="ID_1971202026" CREATED="1539107967444" MODIFIED="1539107986125"/>
<node TEXT="ipfs add -r &lt;stuff folder hash&gt;" ID="ID_1724489939" CREATED="1539107987082" MODIFIED="1539108080238" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="notice the hash returned by CLI, it&apos;s not your old hash" ID="ID_361176709" CREATED="1539108080792" MODIFIED="1539108116568"/>
<node TEXT="it&apos;s not the same as the IPFS Web interface hash" ID="ID_809729718" CREATED="1539108116737" MODIFIED="1539108138880"/>
</node>
<node TEXT="so what&apos;s where?" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1447205344" CREATED="1536620330313" MODIFIED="1539108326017">
<font SIZE="10" BOLD="true"/>
<node TEXT="the IPFS Web UI it&apos;s just a convenience feature that has it&apos;s own metadata.  You can&apos;t actually see everything you&apos;ve added to your IPFS node there" ID="ID_991428970" CREATED="1539108327560" MODIFIED="1539108357639"/>
<node TEXT="But every time you use `ipfs add` it pins the hash to your node" ID="ID_97288716" CREATED="1539108357822" MODIFIED="1539108376543"/>
<node TEXT="See all the hashes pinned" ID="ID_786220598" CREATED="1539108376998" MODIFIED="1539108390721"/>
<node TEXT="ipfs pin ls" ID="ID_1415576044" CREATED="1539108390908" MODIFIED="1539108396659" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="if you loose track of what&apos;s what on your node, your metadata, might be difficult to figure out what you&apos;re pinning" ID="ID_1452944993" CREATED="1539108484115" MODIFIED="1539108510392"/>
<node TEXT="mind you that&apos;s not all the hashes your node contains, try:" ID="ID_194428235" CREATED="1539108513035" MODIFIED="1539108530477"/>
<node TEXT="ipfs stats repo" ID="ID_1992158957" CREATED="1539108531042" MODIFIED="1539108600359" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="shows you&apos;re storing a lot more objects" ID="ID_1777378865" CREATED="1539108600639" MODIFIED="1539108624674"/>
<node TEXT="how far can you go?  Edit ~/.ipfs/config and see for yourself." ID="ID_577374032" CREATED="1539108625185" MODIFIED="1539108856341"/>
</node>
<node POSITION="right" ID="ID_625716097" CREATED="1539110684014" MODIFIED="1539110696526"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>work with IPFS like it's a file system</b>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="The &apos;files&apos; in the Web API are using the `ipfs files` functionality." ID="ID_266843931" CREATED="1539110698362" MODIFIED="1539110720951"/>
<node TEXT="underneath everything is content addressed as usual, but the node constantly keeps tab on the latest and greatest hashes part of our &quot;file system&quot;" ID="ID_866252582" CREATED="1539110721558" MODIFIED="1539110764439"/>
<node TEXT="ipfs files stat /stuff" ID="ID_1201559056" CREATED="1539110776055" MODIFIED="1539110782796" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="gives our hash from the browser" ID="ID_1517849655" CREATED="1539110783127" MODIFIED="1539110791126"/>
<node TEXT="add another file to /stuff" ID="ID_1996593104" CREATED="1539111033954" MODIFIED="1539111038080"/>
<node TEXT="ipfs files stat /" ID="ID_1338630464" CREATED="1539111038552" MODIFIED="1539111136719" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="then" ID="ID_549697734" CREATED="1539111137401" MODIFIED="1539111139839"/>
<node TEXT="ipfs get &lt;hash&gt;" ID="ID_894710168" CREATED="1539111140301" MODIFIED="1539111147739" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="then look in folder as each change happens" ID="ID_987956901" CREATED="1539111148055" MODIFIED="1539111155696"/>
<node TEXT="when working with files while daemon is running they&apos;re possibly cached in memory, need to flush to disk" ID="ID_1744193708" CREATED="1539185506271" MODIFIED="1539185532342"/>
<node TEXT="if files missing after turning daemon off and on, it&apos;s because they weren&apos;t flushed" ID="ID_486944611" CREATED="1539185532635" MODIFIED="1539185548558"/>
<node TEXT="we&apos;ll see that in code later" ID="ID_840691360" CREATED="1539185549716" MODIFIED="1539185560325"/>
<node TEXT="`ipfs files` commands work offline" ID="ID_119771617" CREATED="1539185562488" MODIFIED="1539185587331"/>
</node>
<node TEXT="A more permanent reference" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_284759274" CREATED="1536620359359" MODIFIED="1539109051160">
<font SIZE="10" BOLD="true"/>
<node TEXT="We can publish a snapshot of our file system to IPNS" ID="ID_620452131" CREATED="1539111182694" MODIFIED="1539111199431"/>
<node TEXT="we can save off a folder structure into ipfs and then save off a reference to it into IPNS" ID="ID_494343816" CREATED="1539109053386" MODIFIED="1539109086641"/>
<node TEXT="IPNS uses PKI, the public key is the &quot;reference&quot; to whatever was published to it and signed by the private key" ID="ID_1231017845" CREATED="1539109087017" MODIFIED="1539109121270"/>
<node TEXT="ipfs key gen --type=rsa --size=2048 myroot" ID="ID_382220693" CREATED="1539111355610" MODIFIED="1539111358964" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="get hash, that&apos;s the address we can snapshot our files to" ID="ID_15118450" CREATED="1539111359868" MODIFIED="1539111374563"/>
<node TEXT="ipfs key list" ID="ID_421264116" CREATED="1539111397885" MODIFIED="1539111403580" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="keys are in ~/.ipfs/keystore" ID="ID_1032442064" CREATED="1539111403913" MODIFIED="1539111613941"/>
<node TEXT="plans to export keys to other nodes etc?" ID="ID_1318045678" CREATED="1539111614630" MODIFIED="1539111635379" LINK="https://github.com/ipfs/specs/tree/master/keystore"/>
<node TEXT="for now keystore is node-local and needs to be managed outside of IPFS" ID="ID_1435168903" CREATED="1539111594659" MODIFIED="1539111661307"/>
</node>
<node TEXT="add my / to ipns" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1161216882" CREATED="1536620369845" MODIFIED="1539111676807">
<font SIZE="10" BOLD="true"/>
<node TEXT="ipfs files stat /" ID="ID_167575638" CREATED="1539109179301" MODIFIED="1539111702431" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="ipfs name publish --key=myroot &lt;hash from above&gt;" ID="ID_964304904" CREATED="1539111702807" MODIFIED="1539111826437" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="takes a while!" ID="ID_777917732" CREATED="1539111827227" MODIFIED="1539111830500"/>
<node TEXT="now we can always resolve the most recent snapshot of our file system root by just knowing one hash:  the IPNS hash" ID="ID_1335350712" CREATED="1539111831120" MODIFIED="1539112066459"/>
<node TEXT="ipfs ls /ipns/&lt;hash&gt;/stuff" ID="ID_1167860761" CREATED="1539112066953" MODIFIED="1539112089211" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="update the &apos;stuff&apos; folder using IPFS Node Web Interface" ID="ID_1779853555" CREATED="1539112089692" MODIFIED="1539112123922"/>
<node TEXT="do ipfs ls again notice not updated" ID="ID_818708392" CREATED="1539112169561" MODIFIED="1539112183327"/>
<node TEXT="need to re-snapshot" ID="ID_734837393" CREATED="1539112183967" MODIFIED="1539112191780"/>
<node TEXT="ipfs files stat /&#xa;ipfs name publish --key=myroot &lt;hash from above&gt;" ID="ID_616508807" CREATED="1539112192561" MODIFIED="1539112406560" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="To view the hash for IPNS" ID="ID_518825538" CREATED="1539135655868" MODIFIED="1539135662959"/>
<node TEXT="ipfs key list -l" ID="ID_1257568693" CREATED="1539135663567" MODIFIED="1539135666624" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
</node>
<node POSITION="right" ID="ID_499969940" CREATED="1539112249181" MODIFIED="1539112251771"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>speed</b>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="local file system is fast" ID="ID_1523914888" CREATED="1539112253001" MODIFIED="1539112257118"/>
<node TEXT="ipfs is fastish" ID="ID_1975388957" CREATED="1539112257771" MODIFIED="1539112260750"/>
<node TEXT="ipns is slow" ID="ID_1198374147" CREATED="1539112261092" MODIFIED="1539112263141"/>
<node TEXT="need to contend with this speed difference in our code" ID="ID_1359172657" CREATED="1539112264405" MODIFIED="1539112292092"/>
</node>
<node TEXT="ipfs node code" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_572206590" CREATED="1536620406953" MODIFIED="1536620722702">
<font SIZE="10" BOLD="true"/>
<node TEXT="Background process constantly changes a file, we want to make these files available online." ID="ID_793009674" CREATED="1539112818846" MODIFIED="1539112926860"/>
<node TEXT="Three loops.  Write to FS, write to IPFS, write to IPNS.  Cancel the process after a while.  Where do we stand?" ID="ID_1224107534" CREATED="1539112927069" MODIFIED="1539112957411"/>
<node TEXT="Some concerns:  need to clean up pins" ID="ID_526513272" CREATED="1539112962722" MODIFIED="1539112984561"/>
<node TEXT="https://github.com/ipfs/js-ipfs-api#importing-the-module-and-usage" ID="ID_1460816421" CREATED="1539125653538" MODIFIED="1539125662558" LINK="https://github.com/ipfs/js-ipfs-api#importing-the-module-and-usage"/>
<node TEXT="index.html" ID="ID_554512690" CREATED="1539182212651" MODIFIED="1539182220666">
<node TEXT="client" ID="ID_1917056536" CREATED="1539182223312" MODIFIED="1539182224261"/>
<node TEXT="uses semantic.min.css as dependency form IPFS" ID="ID_1857883783" CREATED="1539182224609" MODIFIED="1539182257186"/>
<node TEXT="add and pin the dependency" ID="ID_97393898" CREATED="1539182257969" MODIFIED="1539182551145">
<node TEXT="Have to put CSS file in a folder that&apos;s added to IPFS otherwise browser cannot infer MIME type (from CSS extension)" ID="ID_1541064519" CREATED="1539183442197" MODIFIED="1539183463494"/>
<node TEXT="copy file into assets folder" ID="ID_81553357" CREATED="1539183464238" MODIFIED="1539183468391"/>
<node TEXT="cp semantic.min.css assets&#xa;ipfs add -r assets" ID="ID_191794630" CREATED="1539182348480" MODIFIED="1539183495952" BACKGROUND_COLOR="#cccccc">
<font NAME="Courier New"/>
</node>
<node TEXT="Qmay8A2gCZkn7dehD2MAEUUPNPQ8TaXmTu1aGvKXi8fC7q" ID="ID_864291597" CREATED="1539182308488" MODIFIED="1539183437352"/>
<node TEXT="check for pin" ID="ID_740655699" CREATED="1539182310560" MODIFIED="1539182312813"/>
<node TEXT="this file will always be available via IPFS as if CDN as long as someone if hosting it.  I&apos;m always pinning it.  But my computer is not always on." ID="ID_245402686" CREATED="1539182365075" MODIFIED="1539182393575"/>
<node TEXT="for CDN use a gateway" ID="ID_988694475" CREATED="1539182535885" MODIFIED="1539182542066" LINK="https://discuss.ipfs.io/t/curated-list-of-ipfs-gateways/620"/>
<node TEXT="https://ipfs.infura.io/" ID="ID_910969585" CREATED="1539182543835" MODIFIED="1539182683067"/>
<node TEXT="https://ipfs.infura.io/ipfs/Qmay8A2gCZkn7dehD2MAEUUPNPQ8TaXmTu1aGvKXi8fC7q" ID="ID_1973900871" CREATED="1539182683991" MODIFIED="1539183513076"/>
<node TEXT="http://localhost:8080/ipfs/Qmay8A2gCZkn7dehD2MAEUUPNPQ8TaXmTu1aGvKXi8fC7q" ID="ID_1367967086" CREATED="1539182685262" MODIFIED="1539183518337"/>
<node TEXT="https://ipfs.io/ipfs/Qmay8A2gCZkn7dehD2MAEUUPNPQ8TaXmTu1aGvKXi8fC7q" ID="ID_752124065" CREATED="1539186772235" MODIFIED="1539186773227"/>
<node TEXT="CORS config for API" ID="ID_1639712635" CREATED="1539187461653" MODIFIED="1539187465491">
<node TEXT="turn off daemon" ID="ID_1008464761" CREATED="1539187853677" MODIFIED="1539187856696"/>
<node TEXT="ipfs config Addresses.API /ip4/0.0.0.0/tcp/5001" ID="ID_1065629321" CREATED="1539187466833" MODIFIED="1539187482525"/>
<node TEXT="ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin &quot;[\&quot;*\&quot;]&quot;" ID="ID_796063708" CREATED="1539187483252" MODIFIED="1539187781905"/>
<node TEXT="ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods &quot;[\&quot;PUT\&quot;, \&quot;GET\&quot;, \&quot;POST\&quot;]&quot;" ID="ID_355065208" CREATED="1539187503285" MODIFIED="1539187838554"/>
<node TEXT="turn on daemon" ID="ID_197989838" CREATED="1539187858265" MODIFIED="1539187860964"/>
</node>
</node>
</node>
</node>
</node>
</map>
