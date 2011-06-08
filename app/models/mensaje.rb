# == Schema Information
# Schema version: 20110607194353
#
# Table name: mensajes
#
#  id         :integer         not null, primary key
#  usuario_id :integer
#  fecha      :date
#  texto      :text
#  created_at :datetime
#  updated_at :datetime
#

class Mensaje < ActiveRecord::Base
  belongs_to :usuario
end
