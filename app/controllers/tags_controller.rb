class TagsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @upload = Upload.find(params[:upload_id])

    @tag = Tag.create({:user_id => @user.id, :upload_id => @upload.id})

    redirect_to user_upload_path(@user, @upload)
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    @user = User.find(params[:user_id])
    @upload = Upload.find(params[:upload_id])

    redirect_to user_upload_path(@user, @upload)
  end



end
