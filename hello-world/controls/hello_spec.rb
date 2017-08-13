#ADD ROLE ATTRIBUTES
var_role = attribute('role',default: 'node1', description:"the node's role")


control "world-1.0" do
  impact 1.0
  title "hello world"
  desc "'hello.txt' should be a file"
# ADD THIS BLOCK 
  if var_role == 'node1'
    msg ='hello world'
  else
    msg = 'hello universe'
  end
  describe file( 'hello.txt' ) do
    it { should exist }
    its('content') {should match /#{msg}/}
  end
end
