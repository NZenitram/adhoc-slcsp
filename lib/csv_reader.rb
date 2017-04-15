require 'csv'

class CsvReader
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def open_csv
    CSV.read(@file_path, headers: true)
  end
end
