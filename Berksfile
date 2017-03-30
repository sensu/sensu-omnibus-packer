source 'https://supermarket.chef.io'

cookbook 'omnibus', git: 'https://github.com/sensu/omnibus-cookbook.git', ref: 'sensu'


# Explicitly pull in seven_zip for windows. For some reason this is
# suddenly not being installed by build-essential cookbook
cookbook 'seven_zip', '~> 2.0'

# Uncomment to use the latest version of the Omnibus cookbook from GitHub
# cookbook 'omnibus', github: 'opscode-cookbooks/omnibus'

group :integration do
  cookbook 'apt',      '~> 2.8'
  cookbook 'yum-epel', '~> 0.6'
end
