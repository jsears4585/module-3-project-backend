class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def show
    @user = User.find(username: params[:username])
    render json: @user
  end

  private

  def user_params
    params.permit(:id, :username)
  end

end
