class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  include ULID::Rails
  ulid :id, auto_generate: true
end
