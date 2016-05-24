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

ActiveRecord::Schema.define(version: 20160517171644) do

  create_table "competencia", force: :cascade do |t|
    t.string   "tipo"
    t.integer  "ramo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "competencia", ["ramo_id"], name: "index_competencia_on_ramo_id"

  create_table "estudiantes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pregunta", force: :cascade do |t|
    t.string   "tipo"
    t.integer  "ramo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pregunta", ["ramo_id"], name: "index_pregunta_on_ramo_id"

  create_table "ramos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "estudiante_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "ramos", ["estudiante_id"], name: "index_ramos_on_estudiante_id"

end
