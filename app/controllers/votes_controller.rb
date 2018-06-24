class VotesController < ApplicationController
  def create
    if get_vote.present?
      get_vote.update(vote_type: params[:vote_type])
    else
      vote = Vote.new(vote_params)
      vote.save
    end
    redirect_to question_path(params[:question_id], user_id: params[:user_id])
  end

  private

  def vote_params
    params.permit(:user_id, :answer_id, :vote_type)
  end

  def get_vote
    Vote.where(user_id: params[:user_id], answer_id: params[:answer_id])
  end
end
