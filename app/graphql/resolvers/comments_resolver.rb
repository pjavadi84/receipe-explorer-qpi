# app/graphql/resolvers/comments_resolver.rb

class Resolvers::CommentsResolver < GraphQL::Schema::Resolver
    argument :recipe_id, ID, required: true
  
    def resolve(recipe_id:)
      Comment.where(recipe_id: recipe_id)
    end
  end
  