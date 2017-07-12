class UsersController < ApplicationController

  def create
    @user = User.find_or_create_by(user_params)
    render json: @user, status: 200
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  private

    def user_params
      params.permit(:id, :username)
    end

end
