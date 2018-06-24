class QuestionsController < ApplicationController

  def index
  end

  def new
    @question = Question.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:question][:user_id])
    @question = Question.new(question_params)
    if @question.save
      redirect_to user_path(@user)
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @user = User.find(params[:user_id])
    @vote = Vote.new
  end

  private

  def question_params
    params.require(:question).permit(:title, :user_id, :category_id)
  end
end
