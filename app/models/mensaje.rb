class Mensaje < ActiveRecord::Base
  belongs_to :usuario
end

# == Schema Information
#
# Table name: mensajes
#
#  id         :integer(4)      not null, primary key
#  usuario_id :integer(4)
#  fecha      :date
#  texto      :text
#  created_at :datetime
#  updated_at :datetime
#

