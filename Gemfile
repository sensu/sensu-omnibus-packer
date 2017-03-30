source 'https://rubygems.org'

gem 'rake'

# Install omnibus
gem 'omnibus', :git => 'https://github.com/sensu/omnibus.git', :branch => 'sensu'
gem 'ffi-yajl', '2.3.0'
gem 'artifactory', '2.5.1'

# This development group is installed by default when you run `bundle install`,
# but if you are using Omnibus in a CI-based infrastructure, you do not need
# the Test Kitchen-based build lab. You can skip these unnecessary dependencies
# by running `bundle install --without development` to speed up build times.
group :development do
  # Use Berkshelf for resolving cookbook dependencies
  gem 'berkshelf', '~> 4.2'

  # Use Test Kitchen for converging the build environment
  gem 'test-kitchen',            '~> 1.4'
  gem 'winrm'
  gem 'winrm-fs'
  gem 'winrm-elevated'
end

group :vagrant do
  gem 'kitchen-vagrant',         '~> 0.18'
end

group :ec2 do
  gem 'kitchen-ec2',             '~> 1.2'
end
