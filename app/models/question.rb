class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy
  belongs_to :category
end
