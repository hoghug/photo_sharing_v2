class UploadsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @upload = @user.uploads.new(upload_params)


    if @upload.save
      redirect_to user_path(@user), notice: "Image uploaded!"
    else
      redirect_to user_path(@user), notice: "Error for upload!"
    end

  end

  def show
    @user = User.find(params[:user_id])
    @upload = Upload.find(params[:id])
    user_ids = User.pluck(:id)
    @tags = Tag.where(upload_id: @upload.id)

    @tags.each do |tag|
      user_ids.delete(tag.user_id)
    end

    @users = []
    user_ids.each { |ui| @users << User.find(ui) }


  end


  private
    def upload_params
      params.require(:upload).permit(:photo)
    end
end
