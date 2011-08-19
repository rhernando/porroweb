require 'test_helper'

class JugadorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: jugadores
#
#  id         :integer(4)      not null, primary key
#  nombre     :string(255)
#  equipo_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

