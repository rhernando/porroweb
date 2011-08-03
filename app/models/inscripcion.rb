class Inscripcion < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :porra

  validates_presence_of :usuario, :porra

end

# == Schema Information
#
# Table name: inscripciones
#
#  id         :integer(4)      not null, primary key
#  porra_id   :integer(4)
#  usuario_id :integer(4)
#  fecha      :date
#  pagado     :boolean(1)
#  created_at :datetime
#  updated_at :datetime
#

