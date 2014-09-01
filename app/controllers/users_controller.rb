class UsersController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def auth
    yo_user_details = YoAuth.get_yo_username(params[:yoauth_token])
    @user = User.find_by(yo_username: yo_user_details[:yo_username])
    render :index
  end

end