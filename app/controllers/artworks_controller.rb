class ArtworksController < ApplicationController

  def index
    @artworks = Kaminari.paginate_array(Artwork.all.order("created_at DESC")).page(params[:page]).per(27)
    render json: @artworks, each_serializer: ArtworksSerializer, status: 200
  end

  def show
    @artwork = Artwork.find(params[:id])
    render json: @artwork, each_serializer: ArtworkSerializer, status: 200
  end

  def create
    @artwork = Artwork.create(title: artwork_params[:title], artwork_HTML: artwork_params[:artwork_HTML], public: artwork_params[:public], user_id: artwork_params[:user_id], image: artwork_params[:image])
    render json: @artwork, status: 200
  end

  private
    def artwork_params
      params.permit(:title, :public, :user_id, :artwork_HTML, :image)
    end

end
