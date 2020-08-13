class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true # A cocktail must have a unique name.
  has_many :doses, dependent: :destroy # A cocktail has many doses
  has_many :ingredients, through: :doses # A cocktail has many ingredients through doses
end
