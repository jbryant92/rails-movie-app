module Types
  class CharacterType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: false
  end
end
