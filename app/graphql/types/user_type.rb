module Types
    class UserType < Types::BaseObject
      field :id, ID, null: false
      field :email, String, null: false
      # Add other fields if necessary
    end
end
  