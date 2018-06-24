class User < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
  has_many :user_categories, dependent: :destroy
  has_many :categories, through: :user_categories
  has_many :votes, through: :answers
end
