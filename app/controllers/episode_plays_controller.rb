class EpisodePlaysController < ApplicationController
  def create
    raise Pundit::NotAuthorizedError unless current_user

    EpisodePlay.create(user_id: current_user.id, episode_id: params[:episode_id])

    respond_to do |format|
      format.js
    end
  end

  def destroy
  end
end
