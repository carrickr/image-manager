# frozen_string_literal: true

FactoryBot.define do
  factory :attachment do
    stored_in { Attachment::LOCAL }
  end
end
