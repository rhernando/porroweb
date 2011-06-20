class AddDetalleToPorra < ActiveRecord::Migration
  def self.up
    add_column :porras, :descripcion, :text
    add_column :porras, :fecha_inicio, :date
  end

  def self.down
    remove_column :porras, :fecha_inicio
    remove_column :porras, :descripcion
  end
end
