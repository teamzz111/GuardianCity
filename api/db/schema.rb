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

ActiveRecord::Schema.define(version: 2018_11_02_055741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "denuncia", force: :cascade do |t|
    t.integer "id_denuncia"
    t.integer "usuario_cedula"
    t.integer "tipo_denuncia"
    t.date "fecha"
    t.text "descripcion_asalto"
    t.integer "zona"
    t.text "descripcion_asaltante"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_denuncia", force: :cascade do |t|
    t.integer "id_tipo_denuncia"
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "cedula"
    t.string "nombre"
    t.string "apellido"
    t.integer "telefono"
    t.string "correo"
    t.integer "cargo"
    t.date "fecha_nacimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zonas", force: :cascade do |t|
    t.integer "id_zona"
    t.string "nombre"
    t.string "direccion"
    t.string "localidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
