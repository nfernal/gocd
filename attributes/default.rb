# default['set_fqdn'] = 'gocd.jibakurei.com'
default['set_fqdn'] = 'gocd.jibakurei.com'
# default['base']['groups'] = [{ :groupname => 'go', :groupid => 630 }]

default['gocd']['user'] = 'go'
default['gocd']['group'] = 'go'
default['java']['install_flavor'] = 'openjdk'
default['java']['jdk_version'] = '8'
default['gocd']['repository']['yum']['baseurl'] = 'https://download.gocd.org'
default['gocd']['repository']['yum']['gpgcheck'] = true
default['gocd']['repository']['yum']['gpgkey'] = 'https://download.gocd.org/GOCD-GPG-KEY.asc'
