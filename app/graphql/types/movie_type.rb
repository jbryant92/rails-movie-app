module Types
  class MovieType < Types::BaseObject
    field :id, Integer, null: false
    field :title, String, null: false
    field :country, String, null: false
    field :actors, [Types::ActorType], null: true
    field :characters, [Types::CharacterType], null: true
    field :year_released, String, null: true

    def year_released
      object.release_date&.year || 'Unknown'
    end
  end
end
