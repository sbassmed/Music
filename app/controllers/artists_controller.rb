class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artists = Artist.find(params[:id])
  end
  private
  def artist_params
    params.require(:artist).permit(:name, :image_url)
  end

end
