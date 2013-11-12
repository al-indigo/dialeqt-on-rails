class WordSound < ActiveRecord::Base
  has_attached_file(:sound,
                    :styles => {:wav => {:format => "wav" },
                                :mp3 => {:format => "mp3" } },
                    :path => ":rails_root/public/system/word_sounds/:id/:style/:filename" )
  belongs_to(:word)
end
