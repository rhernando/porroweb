class CreateNoticia < ActiveRecord::Migration
  def self.up
    create_table :noticia do |t|
      t.text :texto
      t.date :fecha
      t.string :titulo

      t.timestamps
    end
  end

  def self.down
    drop_table :noticia
  end
end
