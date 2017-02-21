class Question < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :answers
  validates :option_1, :presence => true
  validates :option_2, :presence => true
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :avatar2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :avatar2, content_type: /\Aimage\/.*\z/
end
