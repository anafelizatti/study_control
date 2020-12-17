ActiveRecord::Schema.define(version: 2020_12_16_171553) do

  create_table "study_categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "study_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "study_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["study_item_id"], name: "index_study_comments_on_study_item_id"
  end

  create_table "study_items", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.date "deadline"
    t.string "category_id"
    t.string "status"
  end

  add_foreign_key "study_comments", "study_items"
end
