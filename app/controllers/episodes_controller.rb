class EpisodesController < ApplicationController
  def index
    raise Pundit::NotAuthorizedError unless current_user
    @episodes = current_user.episodes.order(pubDate: :desc)
  end
end
