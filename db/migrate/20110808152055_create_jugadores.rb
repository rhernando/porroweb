class CreateJugadores < ActiveRecord::Migration
  def self.up
    create_table :jugadores do |t|
      t.string :nombre
      t.integer :equipo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :jugadores
  end
end
