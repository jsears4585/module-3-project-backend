class ArtworksController < ApplicationController

  def create
    user = User.find_by_username(artwork_params[:username])
    Artwork.create(title: artwork_params[:title], artwork_HTML: artwork_params[:artwork_HTML], public: artwork_params[:public], user_id: user.id)
    byebug
  end

  private
    def artwork_params
      params.permit(:title, :public, :username, :artwork_HTML)
    end

end
