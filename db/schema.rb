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

ActiveRecord::Schema.define(version: 2020_06_22_073131) do

  create_table "agregar_asignatura_registros", force: :cascade do |t|
    t.integer "asignatura_registro_id", null: false
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asignatura_registro_id"], name: "index_agregar_asignatura_registros_on_asignatura_registro_id"
    t.index ["caso_id"], name: "index_agregar_asignatura_registros_on_caso_id"
  end

  create_table "alumnos", force: :cascade do |t|
    t.string "boleta"
    t.string "cvu"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "programa_posgrado_registro_id", null: false
    t.index ["programa_posgrado_registro_id"], name: "index_alumnos_on_programa_posgrado_registro_id"
    t.index ["user_id"], name: "index_alumnos_on_user_id"
  end

  create_table "ampliacion_semestre_registros", force: :cascade do |t|
    t.text "motivacion"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_ampliacion_semestre_registros_on_caso_id"
  end

  create_table "asignatura_registros", force: :cascade do |t|
    t.string "nombre"
    t.string "clave"
    t.string "creditos"
    t.integer "programa_posgrado_registro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["programa_posgrado_registro_id"], name: "index_asignatura_registros_on_programa_posgrado_registro_id"
  end

  create_table "baja_temporal_registros", force: :cascade do |t|
    t.text "motivacion"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_baja_temporal_registros_on_caso_id"
  end

  create_table "cambio_comision_revisora_registros", force: :cascade do |t|
    t.string "presidente"
    t.string "secretario"
    t.string "primer_vocal"
    t.string "segundo_vocal"
    t.string "tercer_vocal"
    t.string "suplente"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_cambio_comision_revisora_registros_on_caso_id"
  end

  create_table "cambio_comite_tutorial_registros", force: :cascade do |t|
    t.string "primer_tutor"
    t.string "segundo_tutor"
    t.string "tercer_tutor"
    t.string "cuarto_tutor"
    t.string "quinto_tutor"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_cambio_comite_tutorial_registros_on_caso_id"
  end

  create_table "cambio_director_tesis_registros", force: :cascade do |t|
    t.string "nombre"
    t.string "nombre_segundo_director"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_cambio_director_tesis_registros_on_caso_id"
  end

  create_table "cambio_maestria_doctorado_registros", force: :cascade do |t|
    t.text "motivacion"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_cambio_maestria_doctorado_registros_on_caso_id"
  end

  create_table "cambio_tema_tesis_registros", force: :cascade do |t|
    t.string "nombre"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_cambio_tema_tesis_registros_on_caso_id"
  end

  create_table "casos", force: :cascade do |t|
    t.integer "tipo_caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "alumno_id", null: false
    t.index ["alumno_id"], name: "index_casos_on_alumno_id"
    t.index ["tipo_caso_id"], name: "index_casos_on_tipo_caso_id"
  end

  create_table "comision_revisora_registros", force: :cascade do |t|
    t.string "presidente"
    t.string "secretario"
    t.string "primer_vocal"
    t.string "segundo_vocal"
    t.string "tercer_vocal"
    t.string "suplente"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_comision_revisora_registros_on_caso_id"
  end

  create_table "comite_tutorial_registros", force: :cascade do |t|
    t.string "primer_tutor"
    t.string "segundo_tutor"
    t.string "tercer_tutor"
    t.string "cuarto_tutor"
    t.string "quinto_tutor"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_comite_tutorial_registros_on_caso_id"
  end

  create_table "cursar_unidad_aprendizaje_externa_registros", force: :cascade do |t|
    t.string "nombre"
    t.string "clave"
    t.string "creditos"
    t.string "unidad_academica"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_cursar_unidad_aprendizaje_externa_registros_on_caso_id"
  end

  create_table "director_tesis_registros", force: :cascade do |t|
    t.string "nombre"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_director_tesis_registros_on_caso_id"
  end

  create_table "examen_obtencion_grado_registros", force: :cascade do |t|
    t.text "motivacion"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_examen_obtencion_grado_registros_on_caso_id"
  end

  create_table "flexibilidad_academica_registros", force: :cascade do |t|
    t.string "nombre"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_flexibilidad_academica_registros_on_caso_id"
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

  create_table "revocacion_baja_registros", force: :cascade do |t|
    t.text "motivacion"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_revocacion_baja_registros_on_caso_id"
  end

  create_table "segundo_director_tesis_registros", force: :cascade do |t|
    t.string "nombre"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_segundo_director_tesis_registros_on_caso_id"
  end

  create_table "solicitud_abierta_registros", force: :cascade do |t|
    t.string "asunto"
    t.text "motivacion"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_solicitud_abierta_registros_on_caso_id"
  end

  create_table "solicitud_programa_movilidad_registros", force: :cascade do |t|
    t.string "nombre"
    t.string "nombre_institucion"
    t.integer "caso_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caso_id"], name: "index_solicitud_programa_movilidad_registros_on_caso_id"
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

  add_foreign_key "agregar_asignatura_registros", "asignatura_registros"
  add_foreign_key "agregar_asignatura_registros", "casos"
  add_foreign_key "alumnos", "programa_posgrado_registros"
  add_foreign_key "alumnos", "users"
  add_foreign_key "ampliacion_semestre_registros", "casos"
  add_foreign_key "asignatura_registros", "programa_posgrado_registros"
  add_foreign_key "baja_temporal_registros", "casos"
  add_foreign_key "cambio_comision_revisora_registros", "casos"
  add_foreign_key "cambio_comite_tutorial_registros", "casos"
  add_foreign_key "cambio_director_tesis_registros", "casos"
  add_foreign_key "cambio_maestria_doctorado_registros", "casos"
  add_foreign_key "cambio_tema_tesis_registros", "casos"
  add_foreign_key "casos", "alumnos"
  add_foreign_key "casos", "tipo_casos"
  add_foreign_key "comision_revisora_registros", "casos"
  add_foreign_key "comite_tutorial_registros", "casos"
  add_foreign_key "cursar_unidad_aprendizaje_externa_registros", "casos"
  add_foreign_key "director_tesis_registros", "casos"
  add_foreign_key "examen_obtencion_grado_registros", "casos"
  add_foreign_key "flexibilidad_academica_registros", "casos"
  add_foreign_key "recursamiento_otra_unidad_registros", "casos"
  add_foreign_key "revocacion_baja_registros", "casos"
  add_foreign_key "segundo_director_tesis_registros", "casos"
  add_foreign_key "solicitud_abierta_registros", "casos"
  add_foreign_key "solicitud_programa_movilidad_registros", "casos"
  add_foreign_key "tema_tesis_registros", "casos"
  add_foreign_key "users", "tipo_usuarios"
end
