class CreateEleccionJugadores < ActiveRecord::Migration
  def self.up
    create_table :eleccion_jugadores do |t|
      t.integer :usuario_id
      t.integer :jugador_id
      t.integer :orden

      t.timestamps
    end
  end

  def self.down
    drop_table :eleccion_jugadores
  end
end
