class EleccionEquipo < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :equipo

  validates_presence_of :usuario, :equipo
end

# == Schema Information
#
# Table name: eleccion_equipos
#
#  id         :integer(4)      not null, primary key
#  equipo_id  :integer(4)
#  usuario_id :integer(4)
#  orden      :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

