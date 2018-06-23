class AnswersController < ApplicationController
  def create
    answer = Answer.new(answer_params)
    if answer.save
      redirect_to question_path(get_params(:question_id), user_id: get_params(:user_id))
    end
  end

  private

  def get_params(x)
    params[:answer][x]
  end

  def answer_params
    params.require(:answer).permit(:description, :user_id, :question_id)
  end
end
