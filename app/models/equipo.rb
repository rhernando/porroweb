# == Schema Information
# Schema version: 20110630155552
#
# Table name: equipos
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  tipo       :integer
#  created_at :datetime
#  updated_at :datetime
#

class Equipo < ActiveRecord::Base
  belongs_to :porra

  has_many :usuarios, :through => :eleccion_equipos

end
