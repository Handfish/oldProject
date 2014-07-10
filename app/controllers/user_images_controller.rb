class UserImagesController < ApplicationController
  before_action :set_user_image, only: [:show, :edit, :update, :destroy]

  def index
    @user_images = UserImage.all
  end

  def show
  end

  def new
    @user_image = UserImage.new
  end

  def edit
  end

  def create
    @user_image = UserImage.new(user_image_params)

      if @user_image.save
        redirect_to @user_image, notice: 'User image was successfully created.' 
      else
        render :new 
      end
  end

  def update
      if @user_image.update(user_image_params)
        redirect_to @user_image, notice: 'User image was successfully updated.' 
      else
        render :edit
      end
  end

  def destroy
    @user_image.destroy
      redirect_to user_images_url, notice: 'User image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_image
      @user_image = UserImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_image_params
      params.require(:user_image).permit(:description, :previous, :next)
    end
end
