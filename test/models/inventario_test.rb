require "test_helper"

class InventarioTest < ActiveSupport::TestCase
  def inventario
    @inventario ||= Inventario.new
  end

  def test_valid
    assert inventario.valid?
  end

  
end
