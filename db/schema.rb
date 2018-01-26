ActiveRecord::Schema.define(version: 20180113074816) do

  create_table "memos", force: :cascade do |t|
    t.text     "title"
    t.text     "text"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
