class CreateJoinTableDictionaryAuthor < ActiveRecord::Migration
  def change
    create_join_table :dictionaries, :authors do |t|
      # t.index [:dictionary_id, :author_id]
      # t.index [:author_id, :dictionary_id]
    end
  end
end
