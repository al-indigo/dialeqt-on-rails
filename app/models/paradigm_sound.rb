class ParadigmSound < ActiveRecord::Base
  has_attached_file(:sound,
                    :styles => {:wav => {:format => "wav" },
                                :mp3 => {:format => "mp3" } },
                    :path => ":rails_root/public/system/paradigm_sounds/:id/:style/:filename" )
  belongs_to(:paradigm)
end
