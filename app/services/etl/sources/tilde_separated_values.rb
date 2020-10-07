require 'kiba-common/sources/csv'

class ETL::Sources::TildeSeparatedValues
  attr_reader :filename

  def initialize(filename:)
    @filename = filename
  end

  def each
    Kiba::Common::Sources::CSV.new(
      filename: filename,
      csv_options: {
        headers: false,
        col_sep: '~',
        encoding: 'ISO-8859-1'
      }
    ).each do |row|
      yield row
    end
  end
end
