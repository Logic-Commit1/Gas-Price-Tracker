
class MainController < ApplicationController
  def index()
    @users = User.all
    @uploads = Upload.all
    @upload = Upload.new
    if user_signed_in? && current_user.admin 
      redirect_to admin_path
    elsif user_signed_in? && !current_user.admin
      redirect_to users_path
    else 
    end
    
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

  # DELETE /uploads/1 or /uploads/1.json
  def destroy
    
  end
end
