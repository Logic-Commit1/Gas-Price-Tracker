class AdminController < ApplicationController
  before_action :is_admin?

  def index
    @users = User.all
    @uploads = Upload.all
  end

  def users 
    @users = User.all
    @uploads = Upload.all
  end

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end

  # def show_user
  #   @users = User.all
  #   @uploads = Upload.all
  # end

  # def uploads
  #   @uploads = Upload.all
  # end

  # def show_upload
  # end
end
