module Types
    class RatingType < Types::BaseObject
      field :id, ID, null: false
      field :value, Integer, null: false
      field :user, UserType, null: false
      field :recipe, RecipeType, null: false
    end
  end
  