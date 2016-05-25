desc "This task is called by the Heroku scheduler add-on"
task :update_tweets => :environment do
  puts "Updating tweets..."
  Tweet.refresh_tweets
  puts "done."
end