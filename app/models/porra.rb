# == Schema Information
# Schema version: 20110620222242
#
# Table name: porras
#
#  id             :integer         not null, primary key
#  titulo         :string(255)
#  importe        :float
#  inscripcion_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#  descripcion    :text
#  fecha_inicio   :date
#

class Porra < ActiveRecord::Base

  has_many :inscripciones
  has_many :equipos
  has_many :usuarios, :through => :inscripciones

  def usario_inscrito?(usuario)
    usuarios.include? usuario
  end
end

