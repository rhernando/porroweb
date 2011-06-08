class CreatePorras < ActiveRecord::Migration
  def self.up
    create_table :porras do |t|
      t.string :titulo
      t.float :importe
      t.integer :inscripcion_id

      t.timestamps
    end
  end

  def self.down
    drop_table :porras
  end
end
