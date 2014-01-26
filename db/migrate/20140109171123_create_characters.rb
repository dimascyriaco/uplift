class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :st
      t.integer :dx
      t.integer :iq
      t.integer :ht

      t.timestamps
    end
  end
end
