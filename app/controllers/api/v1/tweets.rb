module API
  module V1
    class Tweets < Grape::API
      include API::V1::Defaults

      resource :tweets do
        desc "Return all tweets filtered by topic"
        get "", root: :tweets do
          if params[:topic] == 'healthcare'
            Tweet.healthcare
          elsif params[:topic] == 'open_source'
            Tweet.open_source
          elsif params[:topic] == 'nasa'
            Tweet.nasa
          else
            Tweet.all
          end
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