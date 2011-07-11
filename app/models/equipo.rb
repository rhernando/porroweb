class Equipo < ActiveRecord::Base
  belongs_to :porra

  validates_presence_of :nombre

  has_many :usuarios, :through => :eleccion_equipos

  def ruta_imagen
    if porra.code == Porra::LIGA
      '/images/liga/' + nombre_imagen
    end
  end
end

# == Schema Information
#
# Table name: equipos
#
#  id            :integer         not null, primary key
#  nombre        :string(255)
#  tipo          :integer
#  porra_id      :integer
#  created_at    :datetime
#  updated_at    :datetime
#  nombre_imagen :string(255)
#

