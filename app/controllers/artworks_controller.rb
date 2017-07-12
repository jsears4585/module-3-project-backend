class ArtworksController < ApplicationController

  def create
    @artwork = Artwork.create(title: artwork_params[:title], artwork_HTML: artwork_params[:artwork_HTML], public: artwork_params[:public], user_id: artwork_params[:user_id])
    render json: @artwork, status: 200
  end

  private
    def artwork_params
      params.permit(:title, :public, :user_id, :artwork_HTML)
    end

end
