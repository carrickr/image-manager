# frozen_string_literal: true

class Attachment < ApplicationRecord
  validates :stored_in, presence: true

  enum stored_in: { local: 0 }
end
