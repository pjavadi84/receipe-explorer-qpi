# app/graphql/resolvers/rating_resolver.rb

class Resolvers::RatingResolver < GraphQL::Schema::Resolver
    argument :recipe_id, ID, required: true
  
    def resolve(recipe_id:)
      Rating.where(recipe_id: recipe_id)
    end
  end
  