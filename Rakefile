require './environment'

task default: :migrate

desc "Run migrations"

task :migrate do
  puts "Running migrations..."
  ActiveRecord::Migrator.migrate("./db/migrate", ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
end

