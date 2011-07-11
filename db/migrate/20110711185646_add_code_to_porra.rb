class AddCodeToPorra < ActiveRecord::Migration
  def self.up
    add_column :porras, :code, :string
  end

  def self.down
    remove_column :porras, :code
  end
end
