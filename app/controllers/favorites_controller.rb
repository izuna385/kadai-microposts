class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = User.find(params[:user_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'つぶやきをいいねしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:user_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'つぶやきのいいねを解除しました。'
    redirect_to user
  end


end
