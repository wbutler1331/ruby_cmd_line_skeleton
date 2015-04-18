require 'active_record'
require 'yaml'

I18n.enforce_available_locales = true
contents = IO.read("./conf/database.yml")
configuration = YAML::load(contents)
ActiveRecord::Base.establish_connection(configuration["development"])
Dir.glob("./lib/*.rb").each { |f| require f }
