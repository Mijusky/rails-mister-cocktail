class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses # An ingredient has many doses
end
