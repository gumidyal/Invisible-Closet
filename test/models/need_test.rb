require 'test_helper'


class NeedTest < ActiveSupport::TestCase
  

  test 'can be urgent' do
  # this is a test for a future feature, not implemented yet
    n = Need.new
    assert n.valid?
    n.urgent = true
    assert n.valid?
  end

  test 'has an item' do
    n = Need.new
    i = Item.create(name: 'Water Bottle', size: 'Small', quantity: 0)
    n.item = i
    assert n.save
  end
end
