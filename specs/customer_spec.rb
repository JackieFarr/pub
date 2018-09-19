require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")

class TestCustomer < MiniTest::Test

  def setup
    @drink1 = Drink.new("Cocktail", 15)
    @drink2 = Drink.new("Beer", 13)
    @bar = Pub.new("Cheers", 100, [@drink1, @drink2])
  end

def test_customer_has_name()
  customer = Customer.new("Ana", 20)
  assert_equal("Ana", customer.name)
end

def test_customer_has_money()
  customer = Customer.new("Ana", 20)
  assert_equal(20, customer.wallet)
end

def test_customer_gets_drink()
  bar = Pub.new("Cheers", 100, [@drink1, @drink2])
  customer = Customer.new("Ana", 20)
  customer.gets_drink(bar)
  assert_equal("Beer", @drink2.name)
end

def test_customer_pays_drink()
customer = Customer.new("Ana", 20)
customer.pay_drink(@bar)
assert_equal(7, customer.wallet)
end













end
