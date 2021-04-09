class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]


  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      render json: user, status: 200
    else
      response = {
        error: user.errors.full_messages.to_sentence
      }
      render json: response, status: :unprocessable_entity
    end
  end

  def index
    users = User.all 
    render json: users, status: 200
  end

  def show
    render json: @user, status: 200
  end

  private

  def user_params
    params.permit(:name, :username, :password)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end

end
