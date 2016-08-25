# # encoding: utf-8

# Inspec test for recipe demo_trusted_certs::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe file('/etc/chef/trusted_certs') do
  it { should be_directory }
  its('owner') { should eq 'root' }
  its('group') { should eq 'root' }
end

describe file('/etc/chef/trusted_certs/cad-chef-server.crt') do
  its('sha256sum') { should eq '78cdf0d772bf0eed0a0407a6c563763de906005c8f49941d5441f4aea3ab03aa' }
end

describe file('/etc/chef/trusted_certs/cad-delivery.crt') do
  its('sha256sum') { should eq 'dfe8c2ef5b1cc68fae1c5911f3ae27a919fece6d486a668718cb4c6189adca2c' }
end

describe file('/etc/chef/trusted_certs/cad-supermarket.crt') do
  its('sha256sum') { should eq '7976da908493ff67b0c7af72c465f1a9e610f698f435530c4632284d1b0d4c8a' }
end
