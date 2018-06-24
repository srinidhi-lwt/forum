class VotesController < ApplicationController
  def create
    vote = Vote.new(vote_params)
    if vote.save
      redirect_to question_path(params[:question_id], user_id: params[:user_id])
    end
  end

  private

  def vote_params
    params.permit(:user_id, :answer_id, :vote_type)
  end
end
