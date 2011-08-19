class Jugador < ActiveRecord::Base
  belongs_to :equipo

  has_many :usuarios, :through => :eleccion_jugadors

end

# == Schema Information
#
# Table name: jugadores
#
#  id         :integer(4)      not null, primary key
#  nombre     :string(255)
#  equipo_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

