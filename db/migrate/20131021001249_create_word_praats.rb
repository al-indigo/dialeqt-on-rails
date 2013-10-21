class CreateWordPraats < ActiveRecord::Migration
  def change
    create_table :word_praats do |t|
      t.integer :word_id
      t.string :description
      t.attachment :markup
      t.attachment :sound

      t.timestamps
    end
  end
end
