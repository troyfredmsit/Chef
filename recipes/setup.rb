package 'vim-enhanced'
package 'emacs'
package 'nano'

package 'git' do
        action :install

end

package 'tree' do
        action :install
end

package 'ntp'




file '/etc/motd' do
        content "This server is the property of GODMODE!.
	HOSTNAME: #{node['hostname']}
	IPADDRESS: #{node['ipaddress']}
	CPU: #{node['cpu']['0']['mhz']}
	MEMORY: #{node['memory']['total']}

"#the above code uses the ohai command to gather system data.
#syntax for getting the results is node['item']['any sub string']['more substrings']
#surround them all in #{} so the system knows it is a variable outside the string

        action :create
        owner 'root'
        group 'root'
end

service 'ntpd' do
        action [ :enable, :start]

end

