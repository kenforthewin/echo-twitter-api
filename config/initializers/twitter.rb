$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = 'UZ2R8luQORYpWxmSvYwJNgdNC'
  config.consumer_secret = ENV['ECHO_TWITTER_CONSUMER_SECRET']
  config.access_token = '2615510154-1s0uIWcNWOl3Tk7K1k8DJ4s0y0sZYaCLFaJppRu'
  config.access_token_secret = ENV['ECHO_TWITTER_OAUTH_SECRET']
end