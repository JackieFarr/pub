require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")

class TestPub < MiniTest::Test

  def setup
    @drink1 = Drink.new("Cocktail", 15)
    @drink2 = Drink.new("Beer", 13)
    @bar = Pub.new("Cheers", 100, [@drink1, @drink2])
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
    @bar.till_add(@bar)
    assert_equal(113, @bar.till)
  end



end
