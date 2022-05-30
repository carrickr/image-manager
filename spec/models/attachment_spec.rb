require 'rails_helper'

RSpec.describe Attachment, type: :model do
 it { should define_enum_for(:stored_in) }
 it { should validate_presence_of(:stored_in) }
end
