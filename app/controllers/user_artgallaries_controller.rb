class UserArtgallariesController < ApplicationController
  def create
    user_artgallary = UserArtgallary.create(user_artgallary_params)
    render json: user_artgallary.to_json
  end

  def destroy
    user_artgallary = UserFridge.find(params[:id])
    user_artgallary.destroy
    render json: { info: 'Deleted' }
  end

  private

  def user_artgallary_params
    params.require(:user_artgallary.permit(:user_id, :artgallary_id))
  end
end
