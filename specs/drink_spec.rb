require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test

  def test_drink_name()
    drink = Drink.new("Beer", 13)
    assert_equal("Beer", drink.name)
  end

  def test_drink_price()
    drink = Drink.new("Beer", 13)
    assert_equal(13, drink.price)
  end




end
