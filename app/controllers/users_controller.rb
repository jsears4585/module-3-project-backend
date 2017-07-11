class UsersController < ApplicationController
  # skip_before_filter :verify_authenticity_token, :only => [:create, :show]

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def show
    @user = User.find(1)
    render json: @user
  end

  private

  def user_params
    params.permit(:id, :username)
  end

end
