# app/graphql/resolvers/recipe_resolver.rb

class Resolvers::RecipeResolver < GraphQL::Schema::Resolver
    argument :id, ID, required: true
  
    def resolve(id:)
      Recipe.find(id)
    end
  end
  