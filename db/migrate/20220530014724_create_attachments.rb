class CreateAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :attachments, id: false do |t|
      t.binary :id, limit: 16, primary_key: true
      t.string :file_name
      t.string :mime_type
      t.boolean :active, default: true
      t.datetime :upload_at
      t.datetime :processed_at
      t.string :md5_checksum
      t.column :stored_in, :integer

      t.timestamps
    end
  end
end
