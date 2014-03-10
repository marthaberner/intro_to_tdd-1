$LOAD_PATH.unshift(File.expand_path('lib'), __FILE__)

require 'bike'
require "minitest/autorun"

class TestBike < Minitest::Test
  def test_ask_bike_for_color
    #set up
    bike = Bike.new("red")

    # expected value
    expected_color = "red"

    #actaul value
    actual_color = bike.color

    assert_equal(expected_color, actual_color)
  end

  def test_red_bikes_are_cool
    #set up
    bike = Bike.new("red")

    expected_value = true

    #actaul value
    actual_value = bike.is_cool?

    assert_equal(expected_value, actual_value)
  end

  def test_blue_bikes_are_not_cool
    #set up
    bike = Bike.new("blue")

    expected_value = false

    #actaul value
    actual_value = bike.is_cool?

    assert_equal(expected_value, actual_value)
  end
end