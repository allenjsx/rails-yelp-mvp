class Restaurant < ApplicationRecord
  CATEGORIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, :inclusion => { :in =>
    CATEGORIES }
  has_many :reviews, dependent: :destroy
end
