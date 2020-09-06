module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # Get all Poetries
    field :poetries, [PoetryType], null: false
    # Get a poetry
    field :get_poetry, PoetryType, null: true do
      description 'Get a poetry by Id'
      argument :id, Integer, required: true
    end
    
    # Resolvers
    def all_poems
      Poetry.all
    end

    def get_poetry(id:) 
      Poetry.find(id)
    end
  end
end
