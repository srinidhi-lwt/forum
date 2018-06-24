class CategoriesController < ApplicationController
  def create
    user_category = UserCategory.new(category_params)
    if user_category.save
      redirect_to interests_user_path(params[:user_id])
    end
  end

  def destroy
    user = User.find(params[:id])
    user_category = user.user_categories.where(category_id: params[:category_id]).first
    user_category.destroy
    redirect_to interests_user_path(params[:id])
  end

  private

  def category_params
    params.permit(:user_id, :category_id)
  end
end
