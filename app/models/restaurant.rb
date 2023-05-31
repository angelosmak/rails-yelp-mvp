# frozen_string_literal: true

class Restaurant < ApplicationRecord
  Categories = %w[Italian Mexican Japanese Indian].freeze

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: Categories }
end
