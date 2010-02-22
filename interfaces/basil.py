
from zope.interface import Interface
from zope import schema
from config import IConfig

class BasilConfig(Interface):
    provides( IConfigValues )
    
    port = schema.Int(title=u'UDP port')
    address = schema.TextLine(title=u'IP address')
    verbosity = schema.Bool(title=u'Verbosity')

class BasilDefaults( object ):
    provides( BasilConfig )

    port = 8080
    address = u'127.0.0.1'
    verbosity = False
