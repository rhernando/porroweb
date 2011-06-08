class CreateInscripcions < ActiveRecord::Migration
  def self.up
    create_table :inscripcions do |t|
      t.integer :porra_id
      t.integer :usuario_id
      t.date :fecha
      t.boolean :pagado

      t.timestamps
    end
  end

  def self.down
    drop_table :inscripcions
  end
end
