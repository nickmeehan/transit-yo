class UsersController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def create
    @user = User.new(@yo_user_details)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      
    end
  end

  def auth
    @yo_user_details = YoAuth.get_yo_username(params["yoauth_token"])
    @user = User.find_by(yo_username: @yo_user_details[:yo_username])
    if @user != nil
      session[:user_id] = @user.id
      redirect_to @user
    else
      create
    end
  end

end