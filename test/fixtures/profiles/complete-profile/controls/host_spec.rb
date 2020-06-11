# copyright: 2015, Chef Software, Inc

title 'Host example.com lookup'

control 'test01' do
  impact 0.5
  title 'Catchy title'
  desc 'example.com should always exist.'
  describe host('example.com') do
    it { should be_resolvable }
  end
end

control 'test02' do
  input('amplifier_max_volume', value: 10)

  describe azure_generic_resource(group_name: 'MyResourceGroup', name: 'MyResource') do
    its('property') { should eq 'value' }
  end

  describe shadow('/etc/my-custom-place/shadow') do
    its('password') { should eq 'user' }
  end

  sql = oracledb_session(user: 'my_user', password: 'password')
end
