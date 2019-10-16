module Types
  class QueryType < Types::BaseObject
    field :movies, [Types::MovieType], null: false, description: 'Shows all the movies'
    def movies
      Movie.all
    end

    field :movie, Types::MovieType, null: true do
      argument :id, Integer, required: true
    end
    def movie(id:)
      Movie.find(id)
    end

    field :actors, [Types::ActorType], null: false, description: 'Shows all the actors.'
    def actors
      Actor.all
    end

    field :actor, Types::ActorType, null: true do
      argument :id, Integer, required: true
    end
    def actor(id:)
      Actor.find(id)
    end
  end
end
