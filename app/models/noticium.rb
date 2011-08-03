class Noticium < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 5

end

# == Schema Information
#
# Table name: noticia
#
#  id         :integer(4)      not null, primary key
#  texto      :text
#  fecha      :date
#  titulo     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

