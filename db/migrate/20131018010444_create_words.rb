class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :word
      t.text :transcription
      t.text :translation
      t.string :tag
      t.integer :dictionary_id

      t.timestamps
    end
  end
end
