require_relative 'test_helper'
require_relative '../lib/rate_areas_by_zipcode.rb'

class RateAreasByZipCodeTest < Minitest::Test
  def test_it_returns_slcsp_zipcodes
    data = RateAreasByZipCode.new.slcsp_zipcodes
    assert_instance_of Array, data
    assert_equal "64148", data[0]
  end

  def test_it_returns_rate_areas
    data = RateAreasByZipCode.new.rate_areas
    assert_instance_of Array, data
    assert_equal "11", data[0]
  end

  def test_it_returns_zipcode_rate_area_pairs
    
  end

end
