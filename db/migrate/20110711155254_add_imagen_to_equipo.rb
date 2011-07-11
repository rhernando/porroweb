class AddImagenToEquipo < ActiveRecord::Migration
  def self.up
    add_column :equipos, :nombre_imagen, :string
  end

  def self.down
    remove_column :equipos, :nombre_imagen
  end
end
