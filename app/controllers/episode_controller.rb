class EpisodeController < ApplicationController
  def index
    @episodes = current_user.episodes.order(pubDate: :desc)
  end
end
