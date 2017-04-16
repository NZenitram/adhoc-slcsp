require 'csv'

class CsvReader
  attr_reader :file_path
  # initialize CsvReader with supplied file path
  def initialize(file_path)
    @file_path = file_path
  end
  # read data from provided CSV @file_path
  def open_csv
    CSV.read(@file_path, headers: true)
  end
end
