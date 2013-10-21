class CreateWordSounds < ActiveRecord::Migration
  def change
    create_table :word_sounds do |t|
      t.integer :word_id
      t.string :description
      t.attachment :sound

      t.timestamps
    end
  end
end
