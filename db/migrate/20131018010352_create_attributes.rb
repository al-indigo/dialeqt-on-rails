class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name
      t.string :author
      t.text :description
      t.string :identifier

      t.timestamps
    end
  end
end
