require_relative '../lib/csv_reader'

module Slcsp
  # create Slcsp.csv data object
  def self.data
    CsvReader.new('./data/slcsp.csv').open_csv
  end
  # create array of Slcsp.csv zipcodes
  def self.zipcodes
    self.data['zipcode']
  end
end
