# Responsible for printable string of multiplication table
#
# Author:: Niroj Shrstha (mailto:nexus.niroj@gmail.com)
#
class NumberTable
  def initialize(table_size = 10)
    @table_size = table_size.to_i
  end

  # Printable string for Table header.
  # Calls row without any number
  def header
    row
  end

  # Printable string for table row for a given number, number
  # Params:
  # +number+:: multiplication row for number
  def row(number = nil)
    row = "#{number}\t"
    (1..@table_size).each do |index|
      row += "#{index * (number || 1)}\t"
    end
    row
  end
end
