class Porra < ActiveRecord::Base

  has_many :inscripciones
  has_many :usuarios, through => :inscripciones

end

