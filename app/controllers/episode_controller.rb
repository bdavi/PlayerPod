class EpisodeController < ApplicationController
  def index
    # todo handle no episode case!!
    @episodes = current_user.episodes.order(pubDate: :desc)
  end
end
