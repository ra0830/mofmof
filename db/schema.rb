ActiveRecord::Schema.define(version: 20180903023327) do

  create_table "apartments", force: :cascade do |t|
    t.string "name"
    t.string "rent"
    t.text   "adress"
    t.string "year"
    t.text   "info"
    t.string "route1"
    t.string "station1"
    t.string "walk"
    t.string "routes2"
    t.string "station2"
    t.string "walk2"
  end

end
