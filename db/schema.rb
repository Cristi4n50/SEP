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

ActiveRecord::Schema.define(version: 20140211200054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actestados", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actividades", force: true do |t|
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.string   "descripcion"
    t.string   "objetivo"
    t.string   "nombre"
    t.string   "actividad1"
    t.string   "actividad2"
    t.string   "actividad3"
    t.integer  "categoria_id"
    t.integer  "actestado_id"
    t.integer  "asignar_proy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actividades", ["actestado_id"], name: "index_actividades_on_actestado_id", using: :btree
  add_index "actividades", ["asignar_proy_id"], name: "index_actividades_on_asignar_proy_id", using: :btree
  add_index "actividades", ["categoria_id"], name: "index_actividades_on_categoria_id", using: :btree

  create_table "areas", force: true do |t|
    t.string   "nombre"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "asignares_proy", force: true do |t|
    t.string   "nombreproyecto"
    t.string   "objetivo"
    t.integer  "estudiante_id"
    t.integer  "objsyproy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "asignares_proy", ["estudiante_id"], name: "index_asignares_proy_on_estudiante_id", using: :btree
  add_index "asignares_proy", ["objsyproy_id"], name: "index_asignares_proy_on_objsyproy_id", using: :btree

  create_table "assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["role_id"], name: "index_assignments_on_role_id", using: :btree
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id", using: :btree

  create_table "bitacoras", force: true do |t|
    t.integer  "estudiante_id"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.string   "descripcion"
    t.string   "objetivo"
    t.string   "nombre"
    t.string   "actividad1"
    t.string   "actividad2"
    t.string   "actividad3"
    t.string   "actividad4"
    t.string   "actividad5"
    t.string   "nombreproyecto"
    t.integer  "categoria_id"
    t.integer  "actestado_id"
    t.integer  "asignar_proy_id"
    t.integer  "actividad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bitacoras", ["actestado_id"], name: "index_bitacoras_on_actestado_id", using: :btree
  add_index "bitacoras", ["actividad_id"], name: "index_bitacoras_on_actividad_id", using: :btree
  add_index "bitacoras", ["asignar_proy_id"], name: "index_bitacoras_on_asignar_proy_id", using: :btree
  add_index "bitacoras", ["categoria_id"], name: "index_bitacoras_on_categoria_id", using: :btree
  add_index "bitacoras", ["estudiante_id"], name: "index_bitacoras_on_estudiante_id", using: :btree

  create_table "categorias", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centros", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detalle_evaluaciones", force: true do |t|
    t.integer  "evaluacion_id"
    t.integer  "factor_id"
    t.float    "nota"
    t.string   "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detalle_evaluaciones", ["evaluacion_id"], name: "index_detalle_evaluaciones_on_evaluacion_id", using: :btree
  add_index "detalle_evaluaciones", ["factor_id"], name: "index_detalle_evaluaciones_on_factor_id", using: :btree

  create_table "empresas", force: true do |t|
    t.string   "nombre"
    t.string   "nit"
    t.string   "dv"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "fax"
    t.string   "email"
    t.string   "paginaweb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estudiantes", force: true do |t|
    t.string   "nombre1"
    t.string   "nombre2"
    t.string   "apellido1"
    t.string   "apellido2"
    t.boolean  "genero"
    t.string   "email"
    t.string   "documento"
    t.integer  "tipopractica_id"
    t.integer  "ficha_id"
    t.integer  "jefe_id"
    t.integer  "tipodoc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estudiantes", ["ficha_id"], name: "index_estudiantes_on_ficha_id", using: :btree
  add_index "estudiantes", ["jefe_id"], name: "index_estudiantes_on_jefe_id", using: :btree
  add_index "estudiantes", ["tipodoc_id"], name: "index_estudiantes_on_tipodoc_id", using: :btree
  add_index "estudiantes", ["tipopractica_id"], name: "index_estudiantes_on_tipopractica_id", using: :btree

  create_table "evaluaciones", force: true do |t|
    t.integer  "estudiante_id"
    t.integer  "jefe_id"
    t.boolean  "relacionesinterpersona"
    t.boolean  "trabajoequipo"
    t.boolean  "solucionproblema"
    t.boolean  "cumplimiento"
    t.boolean  "organizacion"
    t.boolean  "transferenciaconocimiento"
    t.boolean  "mejoracontinua"
    t.boolean  "fortalecimientoocupacional"
    t.boolean  "oportunidadcalidad"
    t.boolean  "responsabilidadambiental"
    t.boolean  "administracionrecurso"
    t.boolean  "seguridadocupacionalindustrial"
    t.boolean  "documentacionetapaproductiva"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.date     "fecha_evaluacion"
    t.string   "aspectos_positivos"
    t.string   "aspectos_negativos"
    t.string   "aspectospositivofactortecnico"
    t.string   "aspectosnegativofactortecnico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluaciones", ["estudiante_id"], name: "index_evaluaciones_on_estudiante_id", using: :btree
  add_index "evaluaciones", ["jefe_id"], name: "index_evaluaciones_on_jefe_id", using: :btree

  create_table "factores", force: true do |t|
    t.integer  "area_id"
    t.integer  "tipo_factor_id"
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "factores", ["area_id"], name: "index_factores_on_area_id", using: :btree
  add_index "factores", ["tipo_factor_id"], name: "index_factores_on_tipo_factor_id", using: :btree

  create_table "fichas", force: true do |t|
    t.string   "numero"
    t.date     "fecha_inicio_practicas"
    t.date     "fecha_fin_practicas"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fichas", ["programa_id"], name: "index_fichas_on_programa_id", using: :btree

  create_table "jefes", force: true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "cargo"
    t.string   "cedula"
    t.string   "telefono"
    t.string   "email"
    t.integer  "empresa_id"
    t.integer  "tipodoc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jefes", ["empresa_id"], name: "index_jefes_on_empresa_id", using: :btree
  add_index "jefes", ["tipodoc_id"], name: "index_jefes_on_tipodoc_id", using: :btree

  create_table "novedades", force: true do |t|
    t.date     "fecha_ocurrencia"
    t.string   "descripcion"
    t.string   "implicados"
    t.integer  "user_id"
    t.integer  "actestado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "novedades", ["actestado_id"], name: "index_novedades_on_actestado_id", using: :btree
  add_index "novedades", ["user_id"], name: "index_novedades_on_user_id", using: :btree

  create_table "programas", force: true do |t|
    t.string   "nombre"
    t.string   "version"
    t.string   "codigo"
    t.integer  "centro_id"
    t.integer  "titulacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programas", ["centro_id"], name: "index_programas_on_centro_id", using: :btree
  add_index "programas", ["titulacion_id"], name: "index_programas_on_titulacion_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_factores", force: true do |t|
    t.string   "nombre"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipodocs", force: true do |t|
    t.string   "descripcion"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipopracticas", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "titulaciones", force: true do |t|
    t.string   "descripcion"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",         null: false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
  end

end
