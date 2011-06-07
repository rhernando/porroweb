class CreateMensajes < ActiveRecord::Migration
  def self.up
    create_table :mensajes do |t|
      t.integer :usuario_id
      t.date :fecha
      t.text :texto

      t.timestamps
    end
  end

  def self.down
    drop_table :mensajes
  end
end
