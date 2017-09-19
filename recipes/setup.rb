# ~/setup.rb
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
	content 'This server is the property of GODMODE!.'
	action :create
	owner 'root'
	group 'root'
end

service 'ntpd' do
	action [ :enable, :start]

end

