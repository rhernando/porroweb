class CreateEquipos < ActiveRecord::Migration
  def self.up
    create_table :equipos do |t|
      t.string :nombre
      t.integer :tipo
      t.integer :porra_id

      t.timestamps
    end
  end

  def self.down
    drop_table :equipos
  end
end
