class CreateParadigms < ActiveRecord::Migration
  def change
    create_table :paradigms do |t|
      t.string :word
      t.string :transcription
      t.string :translation
      t.integer :word_id

      t.timestamps
    end
  end
end
