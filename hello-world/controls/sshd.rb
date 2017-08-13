 control 'ssh-1.0' do 
   impact 0.7
   title 'sshd protocol version 2'
   desc 'Verify sshd is using protocol version 2'
   describe sshd_config do
    its('Protocol') { should cmp 2 }
   end
end
