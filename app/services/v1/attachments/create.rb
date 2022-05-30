# frozen_string_literal: true

require 'fileutils'
require 'digest/md5'

module V1
  module Attachments
    # Service for creating an attachment, better doc coming
    class Create
      def initialize(source:, upload_at: Time.current, store_in: Attachment::LOCAL)
        @source = source
        @upload_at = upload_at
        @store_in = store_in
      end

      def call
        @md5_checksum = Digest::MD5.hexdigest(File.read(@source))

        # Save the file to the local storage adapter
        # FileUtils.mkdir_p ENV['LOCAL_STORAGE']

        attachment = Attachment.new(
          stored_in: @store_in,
          md5_checksum: @md5_checksum
        )
        attachment.save!
        attachment
      end
    end
  end
end
