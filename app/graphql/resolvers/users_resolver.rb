# app/graphql/resolvers/user_resolver.rb

class Resolvers::UserResolver < GraphQL::Schema::Resolver
    argument :id, ID, required: true
  
    def resolve(id:)
      User.find(id)
    end
  end
  