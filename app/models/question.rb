class Question < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :answers
  validates :option_1, :presence => true
  validates :option_2, :presence => true
end
