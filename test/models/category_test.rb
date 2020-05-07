require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'requires name' do
    c = Category.new
    assert_not c.save
    c.name = 'Winter Coats'
    assert c.save
  end

  test 'has related items' do
    c = Category.create(name: 'Shirts')
    assert c.items.length == 0
    shirt = Item.create(name: 'T-shirt', size: 'Medium', quantity: 100)
    shirt_large = Item.create(name: 'T-shirt', size: 'Large', quantity: 10)
    shirt.category = c
    shirt_large.category = c
    
    assert c.items.length > 0
  end
end
