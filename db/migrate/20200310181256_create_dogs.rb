class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :img
      t.string :mood

      t.timestamps
    end
  end
end
