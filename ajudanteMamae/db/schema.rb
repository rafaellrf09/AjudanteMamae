# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151214140239) do

  create_table "bebes", force: :cascade do |t|
    t.string   "nome"
    t.integer  "idade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cadastros", force: :cascade do |t|
    t.string   "usuario"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dieta", force: :cascade do |t|
    t.string   "nome"
    t.integer  "bebe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "dieta", ["bebe_id"], name: "index_dieta_on_bebe_id"

  create_table "farmacia", force: :cascade do |t|
    t.string   "nome"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.decimal  "elevacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.time     "hora"
    t.integer  "dietum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "items", ["dietum_id"], name: "index_items_on_dietum_id"

end
