class EpisodePlaysController < ApplicationController
  def create
    raise Pundit::NotAuthorizedError unless current_user

    EpisodePlay.create(user_id: current_user.id, episode_id: params[:episode_id])

    respond_to do |format|
      format.js
    end
  end

  def destroy_by_episode_and_user
    raise Pundit::NotAuthorizedError unless current_user

    episode_play = EpisodePlay.find_by(user_id: current_user.id, episode_id: params[:episode_id])
    episode_play.destroy if episode_play

    respond_to do |format|
      format.js
    end
  end
end
