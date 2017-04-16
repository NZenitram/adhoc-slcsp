require_relative 'test_helper'
require_relative '../lib/append_csv.rb'

class AppendCsvTest < Minitest::Test

  def test_it_initializes_with_data
    data = AppendCsv.new.zips_and_rates
    assert_equal Hash, data
  end

  def  test_it_appends_a_csv_row
    reads = CSV.read('./data/slcsp.csv')
    assert_equal "64148", reads[1][0]
    assert_equal "341.24", reads[1][1]
  end
end
