class EpisodesController < ApplicationController
  def index
    raise Pundit::NotAuthorizedError unless current_user
    criteria_string = "episodes.id NOT IN (SELECT episode_id FROM episode_plays WHERE user_id = ?)"
    @episodes = current_user.episodes.where(criteria_string, current_user.id).order(pubDate: :desc)
  end
end
