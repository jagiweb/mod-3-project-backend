class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  def show
    # if @user.days.find_by(days: params[:date]) == Time.new 
      
    #   @calories = user.days.calories
    #   render json: @calories
    # end
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def authenticate 
    @user = User.where(password_digest: params[:password_digest], email: params[:email]) 
    if @user
    render json: @user
    else
      console.log('dasdadadada')
    end
  end 

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :email, :password_digest, :age, :sex, :height, :weight, :bmr)
    end

    def authenticate_params
      params.require(:user).permit(:email, :password_digest)
    end 
end
