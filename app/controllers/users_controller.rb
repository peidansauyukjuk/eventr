class UsersController < ApplicationController
  before_action :get_user, only: %i[show edit update destroy] 
  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to @user
    else
      render :new
    end
  end

  def edit; end

  def update
    @user.update(user_params)
    if @user.valid?
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :profession, :password, :password_confirmation)
  end
end
