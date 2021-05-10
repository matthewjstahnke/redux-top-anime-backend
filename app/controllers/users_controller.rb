class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  
  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @users
  end
  
  def create
    user = User.create(user_params)
    token = encode_token(user.id)
    render json: {user: user, token: token}
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:username, :password)
  end

end
