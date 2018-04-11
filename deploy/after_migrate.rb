on_app_servers do
  $stderr.puts "Seeding the data"
  run "cd #{config.release_path}"
  run "bundle exec rake team:seed"
end
