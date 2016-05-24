module API
  module V1
    class Tweets < Grape::API
      include API::V1::Defaults

      resource :tweets do
        desc "Return all tweets"
        get "", root: :tweets do
          Tweet.all
        end

        desc "Return healthcare tweets"
        get "healthcare", root: :tweets do
          Tweet.healthcare
        end

        desc "Return nasa tweets"
        get "nasa", root: :tweets do
          Tweet.nasa
        end

        desc "Return open source tweets"
        get "open_source", root: :tweets do
          Tweet.open_source
        end

        desc "Return a tweet"
        params do
          requires :id, type: String, desc: "ID of the tweet"
        end
        get ":id", root: "tweet" do
          Tweet.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end