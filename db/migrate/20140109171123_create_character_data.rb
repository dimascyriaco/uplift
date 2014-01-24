class CreateCharacterData < ActiveRecord::Migration
  def change
    create_table :character_data do |t|
      t.string :name
      t.integer :st
      t.integer :dx
      t.integer :iq
      t.integer :ht

      t.timestamps
    end
  end
end
