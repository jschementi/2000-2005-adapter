print "Using SQLServer via ADONET\n"
require_dependency 'models/course'
require 'logger'

ActiveRecord::Base.logger = Logger.new("debug.log")

ActiveRecord::Base.configurations = {
  'arunit' => {
    :adapter  => 'sqlserver',
    :mode     => 'ADONET',
    :host     => 'localhost',
    :username => 'rails',
    :database => 'activerecord_unittest'
  },
  'arunit2' => {
    :adapter  => 'sqlserver',
    :mode     => 'ADONET',
    :host     => 'localhost',
    :username => 'rails',
    :database => 'activerecord_unittest2'
  }
}

ActiveRecord::Base.establish_connection 'arunit'
Course.establish_connection 'arunit2'
