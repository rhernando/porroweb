class DeviseAddLastseenableUsuario < ActiveRecord::Migration
  def self.up
    add_column :usuarios, :last_seen, :datetime
  end
  
  def self.down
    remove_column :usuarios, :last_seen
  end
end