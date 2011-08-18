require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Vehicle.new.valid?
  end
end
