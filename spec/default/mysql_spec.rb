require 'spec_helper'

describe package('mysql-community-server'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe service('mysqld'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end
