module Types
    class RecipeType < Types::BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :ingredients, String, null: false
      # Add other fields if necessary
    end
  end
  