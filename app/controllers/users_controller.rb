class UsersController < ApplicationController
  def index
    @users = User.all
    @uploads = Upload.all
  end

  def show
    @uploads = Upload.all
    @user = User.find(params[:id])
  end

  def destroy
    @status_update = User.find(params[:id])
    if @status_update.present?
      @status_update.destroy
    end
    redirect_to admin_path
  end

  # def show
  # end

  def new
  end


  def create
    
  end

  def update
    # respond_to do |format|
    #   if @upload.update(upload_params)
    #     format.html { redirect_to upload_url(@upload), notice: "Upload was successfully updated." }
    #     format.json { render :show, status: :ok, location: @upload }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @upload.errors, status: :unprocessable_entity }
    #   end
    # end
  end


  
end
