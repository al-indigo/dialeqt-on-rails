class Word < ActiveRecord::Base
  belongs_to(:dictionary)
  has_many(:paradigms)
  has_many(:word_sounds)
  has_many(:word_praats)
#  has_many(:attachments, as: :attachable)
#  has_many(:praats, as: :praatable)
#  accepts_nested_attributes_for (:attachments)
#  attr_accessible(:word, :transcription, :translation, :tag)
  def has_paradigm
    if @word.paradigms.blank?
      return false
    end
    return true

  end
end
