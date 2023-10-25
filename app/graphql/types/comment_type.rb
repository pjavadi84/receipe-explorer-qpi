module Types
    class CommentType < Types::BaseObject
      field :id, ID, null: false
      field :content, String, null: false
      field :user, UserType, null: false
      field :recipe, RecipeType, null: false
    end
  end
  