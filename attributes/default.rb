# default['set_fqdn'] = 'gocd.jibakurei.com'
default['set_fqdn'] = "gocd.jibakurei.com"
default['java']['install_flavor'] = 'openjdk'
default['java']['jdk_version'] = '8'
default['gocd']['repository']['yum']['baseurl'] = 'https://download.gocd.org'
default['gocd']['repository']['yum']['gpgcheck'] = true
default['gocd']['repository']['yum']['gpgkey'] = 'https://download.gocd.org/GOCD-GPG-KEY.asc'
default['gocd']['gocd_oauth_login']['url'] = "https://github.com/gocd-contrib/github-oauth-authorization-plugin/releases/download/2.0.0/github-oauth-authorization-plugin-2.0.0-12.jar"
