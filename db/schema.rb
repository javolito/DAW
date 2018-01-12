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

ActiveRecord::Schema.define(version: 20180111130857) do

  create_table "alquilers", force: true do |t|
    t.integer  "id_coche"
    t.integer  "alquilador"
    t.datetime "fecha_ini_anuncio"
    t.datetime "fecha_fin_anuncio"
    t.datetime "fecha_ini_alquiler"
    t.datetime "fecha_fin_alquiler"
    t.integer  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.integer  "propietario"
    t.string   "marca"
    t.string   "modelo"
    t.integer  "año"
    t.string   "combustible"
    t.string   "cambio"
    t.integer  "km"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compraventa", force: true do |t|
    t.integer  "id_coche"
    t.integer  "comprador"
    t.datetime "fecha_publicacion"
    t.datetime "fecha_compra"
    t.integer  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "historial_de_alquilers", force: true do |t|
    t.integer  "id_coche"
    t.integer  "alquilador"
    t.datetime "fecha_ini_alquiler"
    t.datetime "fecha_fin_alquiler"
    t.integer  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pujas", force: true do |t|
    t.integer  "id_subasta"
    t.integer  "pujador"
    t.integer  "valor"
    t.datetime "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subasta", force: true do |t|
    t.integer  "id_coche"
    t.integer  "comprador"
    t.datetime "fecha_publicacion"
    t.datetime "fecha_limite"
    t.integer  "compra_ya"
    t.integer  "puja_actual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "DNI"
    t.string   "username"
    t.string   "password"
    t.integer  "edad"
    t.integer  "telefono"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
