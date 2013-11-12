class CreateJoinTableDictionaryClassification < ActiveRecord::Migration
  def change
    create_join_table :dictionaries, :classifications do |t|
      # t.index [:dictionary_id, :classification_id]
      # t.index [:classification_id, :dictionary_id]
    end
  end
end
