control "world-1.0" do
  impact 1.0
  title "hello world"
  desc "'hello.txt' should be a file"

  describe file( 'hello.txt' ) do
    it { should exist }
    its('content') {should match /hello world/}
  end
end
