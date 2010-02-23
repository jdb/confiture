<map version="0.7.1">
<node TEXT="confiture">
<node TEXT="use interfaces to validate json files" POSITION="right"/>
<node TEXT="install a zeo zodb" POSITION="right"/>
<node TEXT="one process read, the other write" POSITION="right"/>
<node TEXT="a daemon has a an IDaemonConfig and a DaemonConfigDefaults" POSITION="right"/>
<node TEXT="basil.py" POSITION="left">
<node TEXT="reads in the zodb"/>
<node TEXT="can receive sighup and modifies the socket"/>
</node>
<node TEXT="config.py" POSITION="left">
<node TEXT="takes a json"/>
<node TEXT="validate it according to interfaces"/>
<node TEXT="takes command line argument"/>
</node>
<node TEXT="config-setup.py" POSITION="left">
<node TEXT="setup the zeo"/>
<node TEXT="put the default configuration in the zodb"/>
</node>
<node TEXT="interfaces" POSITION="left">
<node TEXT="basil.py"/>
<node TEXT="config.py"/>
</node>
<node TEXT="defaults" POSITION="left">
<node TEXT="basil.py"/>
<node TEXT="basil.json"/>
</node>
<node TEXT="grok" POSITION="left"/>
</node>
</map>
