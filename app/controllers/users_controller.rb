class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])  
  end

  def new
    @user = User.new
  end

  def create
    @users = User.all
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.js {}
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
