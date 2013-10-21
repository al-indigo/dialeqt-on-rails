class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :transcription
      t.string :translation
      t.string :tag
      t.integer :dictionary_id

      t.timestamps
    end
  end
end
