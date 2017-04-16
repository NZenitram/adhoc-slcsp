require_relative 'test_helper'
require_relative '../lib/rate_areas_by_zipcode.rb'

class RateAreasByZipCodeTest < Minitest::Test

  def test_it_returns_slcsp_zipcodes
    zipcodes = RateAreasByZipCode.new.slcsp_zipcodes
    assert_instance_of Array, zipcodes
    assert_equal "64148", zipcodes[0]
  end

  def test_validity_of_the_data
    rate_areas_zipcode = RateAreasByZipCode.new.zipcode_rate_areas
    assert_equal "64148", rate_areas_zipcode.first[0]
    assert_equal "3", rate_areas_zipcode.first[1]
  end

end
