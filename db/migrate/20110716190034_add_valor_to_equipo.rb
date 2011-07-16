class AddValorToEquipo < ActiveRecord::Migration
  def self.up
    add_column :equipos, :valor, :integer
  end

  def self.down
    remove_column :equipos, :valor
  end
end
