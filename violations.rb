attribute('amplifier_max_volume', value: 10)

describe azure_generic_resource(group_name: 'MyResourceGroup', name: 'MyResource') do
  its('property') { should eq 'value' }
end

describe shadow('/etc/my-custom-place/shadow') do
  its('user') { should eq 'user' }
  its('password') { should eq 'user' }
end

sql = oracledb_session(user: 'my_user', pass: 'password')
