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

ActiveRecord::Schema.define(version: 2018_11_12_024005) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "denuncia", force: :cascade do |t|
    t.date "fecha", null: false
    t.string "descripcion_asalto"
    t.string "descripcion_asaltante"
    t.bigint "zona_id"
    t.bigint "usuario_id", null: false
    t.bigint "tipo_denuncia_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_denuncia_id"], name: "index_denuncia_on_tipo_denuncia_id"
    t.index ["usuario_id"], name: "index_denuncia_on_usuario_id"
    t.index ["zona_id"], name: "index_denuncia_on_zona_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role"], name: "index_roles_on_role", unique: true
  end

  create_table "tipo_denuncia", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "apellido", limit: 55, null: false
    t.integer "telefono"
    t.string "correo", null: false
    t.integer "cargo", null: false
    t.string "fecha_nacimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.string "Password_digest"
    t.index ["correo"], name: "index_usuarios_on_correo", unique: true
    t.index ["role_id"], name: "index_usuarios_on_role_id"
  end

  create_table "zonas", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "direccion", null: false
    t.string "localidad", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["direccion"], name: "index_zonas_on_direccion", unique: true
  end

  add_foreign_key "denuncia", "tipo_denuncia", column: "tipo_denuncia_id"
  add_foreign_key "denuncia", "usuarios"
  add_foreign_key "denuncia", "zonas"
  add_foreign_key "usuarios", "roles"
end
