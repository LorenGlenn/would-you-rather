class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  validates :option_1, :presence => true
  validates :option_2, :presence => true
end
