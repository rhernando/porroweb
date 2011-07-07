# == Schema Information
# Schema version: 20110707171704
#
# Table name: equipos
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  tipo       :integer
#  porra_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Equipo < ActiveRecord::Base
  belongs_to :porra

  has_many :usuarios, :through => :eleccion_equipos

end
