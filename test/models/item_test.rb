require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'requires name, size, and quantity' do
    i = Item.new
    assert_not i.save
    i.name = 'Water Bottle'
    i.size = 'Small'
    i.quantity = 1
    assert i.save
  end

  test 'cannot exceed 1000 items' do
    i = Item.new
    i.name = 'Water Bottle'
    i.size = 'Small'
    i.quantity = 1001
    assert_not i.save
  end

  test 'cannot withdraw more items than are left' do
    i = Item.create(name: 'Water Bottle', size: 'Small', quantity: 1)
    assert i.valid?
    i.quantity = i.quantity - 100
    assert_not i.save
  end
end
