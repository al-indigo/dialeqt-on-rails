class CreateTales < ActiveRecord::Migration
  def change
    create_table :tales do |t|
      t.string :name
      t.text :tale

      t.timestamps
    end
  end
end
