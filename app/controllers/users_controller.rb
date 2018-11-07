class UsersController < ApplicationController

  def index
    @users = User.all
    set_response
  end

  def show
    @user = User.find(params[:id])
    set_response
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    update_data = user_params
    if @user.update(update_data)
      redirect_to users_path
    end
  end 

  private
  def set_response
    respond_to do |format|
      format.html
      format.json
    end
  end

  def user_params
    params.require(:user).permit(:name, :display_name, :self_introduction)
  end

end
