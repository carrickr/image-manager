# frozen_string_literal: true

# The base file model for everything, references a file stored on a service
class Attachment < ApplicationRecord
  validates :stored_in, presence: true

  STORAGE_OPTIONS = [
    LOCAL = :local
  ].freeze

  enum stored_in: STORAGE_OPTIONS
end
