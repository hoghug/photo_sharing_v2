class FavoritesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @upload = Upload.find(params[:upload_id])

    @favorite = Favorite.new({:user_id => @user.id, :upload_id => @upload.id})

    redirect_to :root
  end

  def destroy

  end

end
