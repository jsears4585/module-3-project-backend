class UsersController < ApplicationController

  def index
    @artworks = Kaminari.paginate_array(Artwork.all.where(user_id: params[:user_id]).order("created_at DESC")).page(params[:page]).per(6)
    render json: @artworks, each_serializer: ArtworksSerializer, status: 200
  end

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
