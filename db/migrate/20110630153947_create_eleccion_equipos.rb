class CreateEleccionEquipos < ActiveRecord::Migration
  def self.up
    create_table :eleccion_equipos do |t|
      t.integer :equipo_id
      t.integer :usuario_id
      t.integer :orden

      t.timestamps
    end
  end

  def self.down
    drop_table :eleccion_equipos
  end
end
