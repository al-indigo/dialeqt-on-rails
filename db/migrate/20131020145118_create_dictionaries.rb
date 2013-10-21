class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :name
      t.text :description
      t.string :identifier
      t.integer :author_id

      t.timestamps
    end
  end
end
