require_relative '../lib/csv_reader'

module Zips
  def self.data
    CsvReader.new('./data/zips.csv').open_csv
  end

  def self.zipcodes
    self.data['zipcode']
  end

  def self.rate_areas
    self.data['rate_area']
  end

end
