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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110630155552) do

  create_table "eleccion_equipos", :force => true do |t|
    t.integer  "equipo_id"
    t.integer  "usuario_id"
    t.integer  "orden"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipos", :force => true do |t|
    t.string   "nombre"
    t.integer  "tipo"
    t.integer  "porra_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inscripciones", :force => true do |t|
    t.integer  "porra_id"
    t.integer  "usuario_id"
    t.date     "fecha"
    t.boolean  "pagado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inscripciones", ["usuario_id", "porra_id"], :name => "inscripcion_index", :unique => true

  create_table "mensajes", :force => true do |t|
    t.integer  "usuario_id"
    t.date     "fecha"
    t.text     "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "noticia", :force => true do |t|
    t.text     "texto"
    t.date     "fecha"
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "porras", :force => true do |t|
    t.string   "titulo"
    t.float    "importe"
    t.integer  "inscripcion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "descripcion"
    t.date     "fecha_inicio"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
