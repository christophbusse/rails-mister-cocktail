class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :ingredient, presence: true
  validates :description, presence: true, allow_blank: false
  validates :cocktail, presence: true
  validates_uniqueness_of :cocktail, scope: :ingredient
end
