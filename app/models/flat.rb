# frozen-string-literal: true

# Flat Model
class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :address, uniqueness: true
end
