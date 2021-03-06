# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_30_014724) do
  create_table "attachments", id: { type: :binary, limit: 16 }, force: :cascade do |t|
    t.string "file_name"
    t.string "mime_type"
    t.boolean "active", default: true
    t.datetime "upload_at"
    t.datetime "processed_at"
    t.string "md5_checksum"
    t.integer "stored_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
