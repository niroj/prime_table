class NumberTable
  def initialize(table_size = 10)
    @table_size = table_size.to_i
  end

  def header
    row
  end

  def row(number = nil)
    row = "#{number}\t"
    (1..@table_size).each do |index|
      row += "#{index*(number || 1)}\t"
    end
    row
  end

end