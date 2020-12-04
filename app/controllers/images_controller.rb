class ImagesController < ApplicationController
  def index
    image = Image.all
    render json: image.to_json
  end

  def show
    image = Image.find(params[:id])
    render json: ImageSerializer.new(image)
  end

  def create
    image = Image.create(image_params)
    render json: ImageSerializer.new(image)
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
    render json: { info: 'Deleted' }
  end

  private

  def image_params
    params.require(:image).permit(:user_id, :artgallary_id, :url, :description, :name, :image_type)
  end
end
