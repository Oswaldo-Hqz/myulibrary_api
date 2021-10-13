class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  # GET /api/v1/users
  def list
    @users = User.all
    if @users
      render json: @users
    else
      render json: { status: 500, errors: ['no users found'] }      
    end
  end

  # GET /api/v1/users/1
  def profile
    @user = User.find(params[:id])
    if @user
      render json: @user
    else
      render json: { status: 500, errors: ['user not found'] }
    end
  end

  # POST /api/v1/users
  def create
    @user = User.new(user_params)

    if @user.valid?
      token = encode_token({user_id: @user.id})
      time = Time.now + 4.hours.to_i
      render json: {user: @user, token: token, exp: time.strftime("%m-%d-%Y %H:%M")}
    else
      render json: {error: "Invalid user data"}
    end
  end

  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      time = Time.now + 4.hours.to_i
      render json: {user: @user, token: token, exp: time.strftime("%m-%d-%Y %H:%M")}
    else
      render json: {error: "log in failed! Invalid email or password"}
    end
  end

  def auto_login
    if logged_in_user
      render json: logged_in_user
    else
      render json: {errors: "No user logged in"}
    end        
  end

  private
  
    def user_params
      params.require(:api_v1_user).permit(:first_name, :last_name, :role_id, :email, :password_digest)
    end
end
