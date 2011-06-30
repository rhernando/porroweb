class IndiceInscripcion < ActiveRecord::Migration
  def self.up
    add_index :inscripciones, [:usuario_id, :porra_id], :unique => true, :name => "inscripcion_index"
  end

  def self.down
    remove_index :inscripciones, :name => "inscripcion_index"
  end
end
