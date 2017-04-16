require_relative 'test_helper'
require_relative '../lib/append_csv.rb'

class AppendCsvTest < Minitest::Test

  def test_it_initializes_with_data
    data = AppendCsv.new.zips_and_rates
    assert_equal Array, data
  end

  def  test_it_appends_a_csv_row
    data = AppendCsv.new.create_csv
  end
end
