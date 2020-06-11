# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_10_200342) do

  create_table "alumnos", force: :cascade do |t|
    t.string "boleta"
    t.string "cvu"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_alumnos_on_user_id"
  end

  create_table "casos", force: :cascade do |t|
    t.integer "tipo_caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "alumno_id", null: false
    t.index ["alumno_id"], name: "index_casos_on_alumno_id"
    t.index ["tipo_caso_id"], name: "index_casos_on_tipo_caso_id"
  end

  create_table "director_tesis_registros", force: :cascade do |t|
    t.string "nombre"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_director_tesis_registros_on_caso_id"
  end

  create_table "programa_posgrado_registros", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recursamiento_otra_unidad_registros", force: :cascade do |t|
    t.string "nombre"
    t.string "clave"
    t.string "creditos"
    t.string "nombre_unidad_academica"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_recursamiento_otra_unidad_registros_on_caso_id"
  end

  create_table "tema_tesis_registros", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "caso_id", null: false
    t.index ["caso_id"], name: "index_tema_tesis_registros_on_caso_id"
  end

  create_table "tipo_casos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "primer_apellido"
    t.string "segundo_apellido"
    t.string "curp"
    t.integer "tipo_usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["tipo_usuario_id"], name: "index_users_on_tipo_usuario_id"
  end

  add_foreign_key "alumnos", "users"
  add_foreign_key "casos", "alumnos"
  add_foreign_key "casos", "tipo_casos"
  add_foreign_key "director_tesis_registros", "casos"
  add_foreign_key "recursamiento_otra_unidad_registros", "casos"
  add_foreign_key "tema_tesis_registros", "casos"
  add_foreign_key "users", "tipo_usuarios"
end
