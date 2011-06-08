class CreateInscripcions < ActiveRecord::Migration
  def self.up
    create_table :inscripciones do |t|
      t.integer :porra_id
      t.integer :usuario_id
      t.date :fecha
      t.boolean :pagado

      t.timestamps
    end
  end

  def self.down
    drop_table :inscripciones
  end
end
