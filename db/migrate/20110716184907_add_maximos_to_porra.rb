class AddMaximosToPorra < ActiveRecord::Migration
  def self.up
    add_column :porras, :max_val_equipos, :integer
    add_column :porras, :max_val_jugadores, :integer
    add_column :porras, :num_equipos, :integer
    add_column :porras, :num_jugadores, :integer
  end

  def self.down
    remove_column :porras, :max_val_jugadores
    remove_column :porras, :max_val_equipos
    remove_column :porras, :num_jugadores
    remove_column :porras, :num_equipos
  end
end
