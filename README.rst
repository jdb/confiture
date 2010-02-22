
Distributed configuration
=========================

Three modules:

#. the daemon, has a configuration file. It reads the configuration on
   startup or when explicitly requested to re-read the configuration.

   It is not an option for the daemon to request the configuration
   value via SQL for instance, which would generate network requests
   all the time, the daemon has a local cache. Either a zodb cache, or
   a memcache, or there is a protocol to notify the daemon to reload
   the configuration

#. the persistence, it could be a Couchdb, a Zodb, a Postgresql with a
   Storm. It could be anything, but it needs to be sexy. It stores the
   configuration so that when the server reboots, it does not forget
   its configuration.

#. the interface either web or command line, it needs to be deported
   so that one interface can communicate with multiple backends.

The interface is a Grok site or a command line, writing to a zeo zodb,
the daemon can read the configuration in the zeo zodb. Or the
interface can be a Grok site using storm around Sqlite.

Let's roll: the points of configuration for the daemon is log
verbosity which is a boolean, ip and port::

   { "verbosity"  : "false",
     "ip_address" : "127.0.0.1", 
     "port"       : "8080" }

On the platform, the daemon has the identifier *basil*, so the in the
store, the three parameters are located under the basil node, under
the root node.

Let's first build 

- a command line which sets up the zodb, the default values. It is
  called ``config-setup.py``, and expects a *defaults.py* with the
  interface named after the daemon identifier, and detailing the
  default values,
def
- a command line which can talk to a zeo zodb, and get, set the
  options. It is named ``config.py``, and has the ``--id`` set, for
  instance, to ``basil`` then takes a json configuration file,


Setting up the configuration repository
=======================================

#. it declares the hard coded ``Data.fs`` file storage in the current
   directory,

#. looping in the ``interfaces`` directory, it loads the class based
   on the zope.interfaces. An object conforming to the interface, and
   whose values are the default value is instantiated and stored in
   the ZODB.

   #. list the interfaces of a package,
