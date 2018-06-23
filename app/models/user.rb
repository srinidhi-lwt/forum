class User < ApplicationRecord
  has_many :questions
  has_many :answers, through: :questions
  has_many :user_categories
  has_many :categories, through: :user_categories
end
