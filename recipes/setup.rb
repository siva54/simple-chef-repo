package 'tree'
package 'ntp'
package 'git'

file '/etc/motd' do
  content 'This content is the property of Siva'
  action :create
  owner 'root'
  group 'root'
end

service 'ntpd' do
  action [:enable, :start]
end
