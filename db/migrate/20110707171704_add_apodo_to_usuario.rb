class AddApodoToUsuario < ActiveRecord::Migration
  def self.up
    add_column :usuarios, :apodo, :string
  end

  def self.down
    remove_column :usuarios, :apodo
  end
end
