# == Schema Information
# Schema version: 20110608150135
#
# Table name: porras
#
#  id             :integer         not null, primary key
#  titulo         :string(255)
#  importe        :float
#  inscripcion_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Porra < ActiveRecord::Base

  has_many :inscripciones
  has_many :usuarios, :through => :inscripciones

end

