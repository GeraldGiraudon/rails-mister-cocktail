class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
end

# A dose must have a description, a cocktail and an ingredient,
# and [cocktail, ingredient] pairings should be unique.
