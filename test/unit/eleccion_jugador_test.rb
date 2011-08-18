require 'test_helper'

class EleccionJugadorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: eleccion_jugadores
#
#  id         :integer(4)      not null, primary key
#  usuario_id :integer(4)
#  jugador_id :integer(4)
#  orden      :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

