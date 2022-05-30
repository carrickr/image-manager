class Attachment < ApplicationRecord
  validates :stored_in

  enum stored_in { local: 0 }


end
