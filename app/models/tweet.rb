class Tweet < ActiveRecord::Base
  validates_presence_of :topic, :text, :user, :source
  enum topic: [:healthcare, :nasa, :open_source]

  def self.refresh_tweets
    Tweet.delete_all

    $twitter.search('healthcare', result_type: :recent, lang: "en").take(15).each{|tweet| Tweet.create!(text: tweet.text, topic: 'healthcare',
                                                 source: tweet.url, retweet_count: tweet.retweet_count,
                                                 favorite_count: tweet.favorite_count, user: tweet.user.name)}

    $twitter.search('nasa', result_type: :recent, lang: "en").take(15).each{|tweet| Tweet.create!(text: tweet.text, topic: 'nasa',
                                                 source: tweet.url, retweet_count: tweet.retweet_count,
                                                 favorite_count: tweet.favorite_count, user: tweet.user.name)}

    $twitter.search('open source', result_type: :recent, lang: "en").take(15).each{|tweet| Tweet.create!(text: tweet.text, topic: 'open_source',
                                                 source: tweet.url, retweet_count: tweet.retweet_count,
                                                 favorite_count: tweet.favorite_count, user: tweet.user.name)}
  end
end
