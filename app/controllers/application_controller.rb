class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  before_filter :load_tweets

  def load_tweets
    @tweets = Twitter.user_timeline[0..4]
  end
end
