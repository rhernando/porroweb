class EleccionJugador < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :jugador
end

# == Schema Information
#
# Table name: eleccion_jugadores
#
#  id         :integer(4)      not null, primary key
#  usuario_id :integer(4)
#  jugador_id :integer(4)
#  orden      :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

