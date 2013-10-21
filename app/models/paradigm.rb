class Paradigm < ActiveRecord::Base
  belongs_to(:word)
  has_many(:paradigm_sounds)
  has_many(:paradigm_praats)
#  has_many(:attachments, as: :attachable)
#  has_many(:praats, as: :praatable)
#  attr_accessible(:word, :transcription, :translation)
end
