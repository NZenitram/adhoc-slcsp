require_relative '../lib/csv_reader'

module Zips
  # create Zips.csv data object
  def self.data
    CsvReader.new('./data/zips.csv').open_csv
  end
  # create array of Zip.csv zipcodes
  def self.zipcodes
    self.data['zipcode']
  end
  # create array of Zip.csv rate_areas
  def self.rate_areas
    self.data['rate_area']
  end
end
