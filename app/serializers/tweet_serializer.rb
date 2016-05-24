class TweetSerializer < ActiveModel::Serializer

  attributes :id, :text, :user, :topic, :retweet_count,
             :source, :favorite_count, :created_at, :updated_at
end