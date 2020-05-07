require 'test_helper'

class DonationTest < ActiveSupport::TestCase

  test 'validates email' do
    d = Donation.new
    # should not save without an email
    assert_not d.valid?
    d.name = 'Jane Doe'
    d.description = 'Example donation description'
    d.email = '@@@@@@'
    assert_not d.valid?
    d.email = 'test@example.com'
    assert d.save
  end

  test 'requires description' do
    d = Donation.new
    d.name = 'John Doe'
    d.email = 'john@doe.com'
    assert_not d.save
    d.description = 'Test decription'
    assert d.save
  end
end
