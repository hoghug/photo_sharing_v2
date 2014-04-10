class FavoritesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @upload = Upload.find(params[:upload_id])

    # @upload.favorites << @user
    @favorite = Favorite.create({:user_id => @user.id, :upload_id => @upload.id})

    redirect_to :root
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    redirect_to :root
  end

end
