require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")

class TestCustomer < MiniTest::Test

def test_customer_has_name()
  customer = Customer.new("Ana", 10)
  assert_equal("Ana", customer.name)
end

def test_customer_has_money()
  customer = Customer.new("Ana", 10)
  assert_equal(10, customer.wallet)
end






end
