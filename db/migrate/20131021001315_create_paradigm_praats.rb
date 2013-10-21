class CreateParadigmPraats < ActiveRecord::Migration
  def change
    create_table :paradigm_praats do |t|
      t.integer :paradigm_id
      t.string :description
      t.attachment :markup
      t.attachment :sound

      t.timestamps
    end
  end
end
