class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:following, :followers]

  def show
  	@user = User.find(params[:id])
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
  end
end
