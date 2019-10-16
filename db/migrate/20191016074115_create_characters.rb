class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :movie_id
      t.string :actor_id

      t.timestamps
    end
  end
end
