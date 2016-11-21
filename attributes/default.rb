## Base files, directories and install method
#
default['pio']['aio'] = false
default['pio']['provision_only'] = false
default['pio']['bundle'] = 'aml'
default['pio']['pypi_pio_version'] = '0.9.8'

default['pio']['home_prefix'] = '/usr/local'
default['pio']['libdir'] = '/opt/data'
default['pio']['apache_mirror'] = node['ark']['apache_mirror']

default['pio']['service_manager'] = 'auto'

## AML install method (bundle aml)
#
default['pio']['aml']['user'] = 'aml'

# conditional home
if node['pio']['aml']['user'] == 'root'
  default['pio']['aml']['home'] = '/root'
else
  default['pio']['aml']['home'] = File.join(node['pio']['libdir'], 'aml/home')
end

default['pio']['aml']['giturl'] = 'https://github.com/actionml/PredictionIO.git'
default['pio']['aml']['gitrev'] = 'master'
default['pio']['aml']['gitupdate'] = true

## Universal recommender defaults
#
default['pio']['ur']['giturl'] = 'https://github.com/actionml/template-scala-parallel-universal-recommendation'
default['pio']['ur']['gitrev'] = 'master'
default['pio']['ur']['gitupdate'] = true

## Mahout defaults
#
default['pio']['mahout']['giturl'] = 'https://github.com/apache/mahout.git'
default['pio']['mahout']['gitrev'] = 'master'
default['pio']['mahout']['gitupdate'] = true

## PIO configuration defaults
#
default['pio']['conf']['event_port'] = 31729
default['pio']['conf']['prediction_port'] = 31730

default['pio']['conf']['es_clustername'] = 'elasticsearch'
default['pio']['conf']['es_hosts'] = %w(127.0.0.1)
## es_ports can be a list of ports corresponding hosts,
#  if default default port 9300 is used, this list can be omitted.
# default['pio']['conf']['es_ports'] = %w()

default['pio']['conf']['namenode_host'] = '127.0.0.1'
default['pio']['conf']['namenode_port'] = 9000
default['pio']['conf']['zookeeper_hosts'] = %w(127.0.0.1)
default['pio']['conf']['zookeeper_port'] = 2181
