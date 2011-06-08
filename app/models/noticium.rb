# == Schema Information
# Schema version: 20110607194353
#
# Table name: noticia
#
#  id         :integer         not null, primary key
#  texto      :text
#  fecha      :date
#  titulo     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Noticium < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 5

end
