require_relative 'test_helper'
require_relative '../lib/slcsp.rb'

class SlcspTest < Minitest::Test
  def setup
    @file_path = './data/slcsp.csv'
  end

  def test_slcsp_object_contains_data
    data = Slscp.data
    assert_equal "64148", data.first[0]
  end

  def test_slcsp_returns_zipcodes
    zipcodes = Slscp.zipcodes
    assert_instance_of Array, zipcodes
    assert_equal "64148", zipcodes[0]
  end
end
