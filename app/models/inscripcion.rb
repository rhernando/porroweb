# == Schema Information
# Schema version: 20110608150135
#
# Table name: inscripciones
#
#  id         :integer         not null, primary key
#  porra_id   :integer
#  usuario_id :integer
#  fecha      :date
#  pagado     :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Inscripcion < ActiveRecord::Base
end
