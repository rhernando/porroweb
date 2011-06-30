# == Schema Information
# Schema version: 20110630155552
#
# Table name: eleccion_equipos
#
#  id         :integer         not null, primary key
#  equipo_id  :integer
#  usuario_id :integer
#  orden      :integer
#  created_at :datetime
#  updated_at :datetime
#

class EleccionEquipo < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :equipo

  validates_presence_of :usuario, :equipo
end
