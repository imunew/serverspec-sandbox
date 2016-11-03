require 'spec_helper'

describe package('php') do
  it { should be_installed.with_version '5.6' }
end

describe service('php-fpm'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

mod_names = Array['gd', 'imagick', 'mbstring', 'mcrypt', 'xml']
mod_names.each { | mod_name |
  describe command('php -m | grep ' + mod_name), :if => os[:family] == 'redhat' do
    its(:stdout) { should contain(mod_name) }
  end
}
