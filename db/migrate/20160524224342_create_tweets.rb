class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.string :user
      t.integer :topic
      t.integer :retweet_count
      t.string :source
      t.integer :favorite_count

      t.timestamps null: false
    end
  end
end
