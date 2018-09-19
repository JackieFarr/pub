require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")
class TestPub < MiniTest::Test

  def setup
    @drink1 = Drink.new("Cocktail", 15)
    @drink2 = Drink.new("Beer", 13)
    @bar = Pub.new("Cheers", 100, [@drink1, @drink2])
    @customer = Customer.new("Ana", 20, 30)
  end

  def test_pub_name()
    cheers = Pub.new("Cheers", 100, [])
    assert_equal("Cheers", cheers.name)
  end

  def test_pub_till()
    cheers = Pub.new("Cheers", 100, [])
    assert_equal(100, cheers.till)
  end

  def test_pub_drinks()
    assert_equal([@drink1, @drink2], @bar.drinks)
  end

  def test_pub_lose_drink()
    drink_lost = @bar.lose_drink
    assert_equal(@drink2.name, drink_lost.name)
    # assert_equal(@drinks)
  end

  def test_till_increase()
    expected_result = @bar.till_add(13)
    assert_equal(113, expected_result)
  end

  def test_check_age()
    result = @bar.check_age(@customer)
    assert_equal("You can drink alcohol", result)
  end



end
