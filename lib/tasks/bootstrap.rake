desc "Bootstrap the initial environment"
task :bootstrap => [:environment, 'db:reset', 'db:schema:load'] do
  puts "Done!"
end