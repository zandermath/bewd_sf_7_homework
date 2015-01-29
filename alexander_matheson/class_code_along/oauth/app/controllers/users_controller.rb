class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def new
  end

  def show
  	@user = get_user
  end

  private

  def get_user
  	@user = User.find(params[:id])
  end
end
