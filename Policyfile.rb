# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'node4-github'

# Where to find external cookbooks:


# run_list: chef-client will run these recipes in the order specified.
run_list 'node4-github::default'

# Specify a custom source for a single cookbook:
cookbook 'node4-github', path: '.'

cookbook 'nginx', github: 'stokesy56/chef-nginx-cookbook', branch: 'master'
cookbook 'python', github: 'stokesy56/chef-python-cookbook', branch: 'master'
