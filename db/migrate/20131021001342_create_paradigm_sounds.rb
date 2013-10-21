class CreateParadigmSounds < ActiveRecord::Migration
  def change
    create_table :paradigm_sounds do |t|
      t.integer :paradigm_id
      t.string :description
      t.attachment :sound

      t.timestamps
    end
  end
end
