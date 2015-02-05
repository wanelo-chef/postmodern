name             'postmodern'
maintainer       'Wanelo, Inc'
maintainer_email 'ops@wanelo.com'
license          'MIT'
description      'Installs the postmodern gem into the system for PostgreSQL maintenance'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.2'

supports 'omnios'
supports 'smartos'
supports 'ubuntu'

depends 'build-essential'
