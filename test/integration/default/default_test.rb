# InSpec test for recipe nginx::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end


describe service 'nginx' do
  it { should be_running }
  it { should be_enabled }
end

describe port(3000) do
  it { should be_listening }
end

describe package('python') do
  it { should be_installed }
end

describe package('python-pip') do
  it { should be_installed }
end

describe pip('requests') do
  it { should be_installed }
  its('version') { should eq '2.3.0' }
end
