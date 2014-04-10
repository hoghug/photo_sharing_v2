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


  private
    def upload_params
      params.require(:upload).permit(:photo)
    end
end
