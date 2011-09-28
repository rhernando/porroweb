class Equipo < ActiveRecord::Base
  belongs_to :porra

  validates_presence_of :nombre

  has_many :usuarios, :through => :eleccion_equipos
  has_many :jugadors

  def ruta_imagen
    if porra.code == Porra::LIGA
      '/assets/liga/' + nombre_imagen
    end
  end
end


# == Schema Information
#
# Table name: equipos
#
#  id            :integer(4)      not null, primary key
#  nombre        :string(255)
#  tipo          :integer(4)
#  porra_id      :integer(4)
#  created_at    :datetime
#  updated_at    :datetime
#  nombre_imagen :string(255)
#  valor         :integer(4)
#

