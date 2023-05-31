class Restaurant < ApplicationRecord
  Categories = ['Italian', 'Mexican', 'Japanese', 'Indian']

  has_many :reviews,dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true,inclusion:{in: Categories}
end
