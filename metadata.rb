name 'gocd'
maintainer 'Maduro Engineering'
maintainer_email 'nfernal13@outlook.com'
license 'All Rights Reserved'
description 'Installs/Configures gocd server and agent'
long_description 'Installs/Configures gocd'
version '0.1.0'
# source_url       'https://github.com/gocd-contrib/go-cookbook' if respond_to?(:source_url)
# issues_url       'https://github.com/gocd-contrib/go-cookbook/issues' if respond_to?(:issues_url)
chef_version '>= 12.14' if respond_to?(:chef_version)

supports 'centos'
supports 'redhat'

# recipe 'gocd::server', 'Installs and configures a Go server'
# recipe 'gocd::agent', 'Installs and configures a Go agent'
# recipe 'gocd::repository', 'Installs the go yum/apt repository'
# recipe 'gocd::agent_windows', 'Installs and configures Windows Go agent'
# recipe 'gocd::server_windows', 'Installs and configures Windows Go server'
# recipe 'gocd::agent_linux', 'Install and configures Linux Go agent'
# recipe 'gocd::server_linux', 'Install and configures Linux Go server'

depends 'hostname'
depends 'java'
depends 'yum'
