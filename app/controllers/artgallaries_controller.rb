class ArtgallariesController < ApplicationController
  def index
    artgallaries = Artgallary.all
    render json: ArtgallarySerializer.new(artgallaries)
  end

  def show
    artgallary = Artgallary.find_by(id: params[:id])
    render json: ArtgallarySerializer.new(artgallary)
  end

  def create
    artgallary = Artgallary.create(artgallaries_params)
    render json: ArtgallarySerializer.new(artgallary)
  end

  def edit
    artgallary = Artgallary.update(artgallaries_params)
    render json: ArtgallarySerializer.new(artgallary)
  end

  def destroy
    artgallary = Artgallary.find(params[:id])
    artgallary.destroy
    render json: { info: 'Deleted' }
  end

  private

  def artgallaries_params
    params.require(:artgallary).permit(:url, :name, user_artgallaries_attributes: [:user_id])
  end
end
