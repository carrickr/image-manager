# frozen_string_literal: true

OTTERS_PATH = "#{::Rails.root}/spec/fixtures/morro_bay_otters.jpeg".freeze
OTTERS_HEX_DIGEST = '4f0415d3584429bb1ef0bbea7232d6f3'

describe V1::Attachments::Create do
  subject { described_class.new(source: OTTERS_PATH) }
  let(:call) { subject.call }

  it 'creates an attachment record' do
    expect { call }.to change(Attachment, :count).from(0).to(1)
  end

  it 'returns an Attachment' do
    expect(call).to be_instance_of(Attachment)
  end

  context 'md5_checksum' do
    it 'sets the proper md5 on the attachment' do
      expect(call.md5_checksum).to eq(OTTERS_HEX_DIGEST)
    end
  end
end
