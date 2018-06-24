class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
    if params[:category].blank?
      @questions = @user.questions
    end
  end

  def interests
    @user = User.find(params[:id])
    @category = Category.new
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end
