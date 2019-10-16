module Types
  class ActorType < Types::BaseObject
    field :id, Integer, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :movies, [Types::MovieType], null: true
    field :characters, [Types::CharacterType], null: true
  end
end
