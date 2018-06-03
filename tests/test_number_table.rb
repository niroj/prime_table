require 'minitest/autorun'
require './lib/number_table'

class NumberTableTest < Minitest::Test
  def setup
    @size_2_table = NumberTable.new(2)
    @size_5_table = NumberTable.new(5)
  end

  def test_header_prints_out_table_header
    assert_equal @size_2_table.header, "\t1\t2\t"
    assert_equal @size_5_table.header, "\t1\t2\t3\t4\t5\t"
  end

  def test_row_prints_out_table_for_given_number
    assert_equal @size_2_table.row(2), "2\t2\t4\t"
    assert_equal @size_5_table.row(2), "2\t2\t4\t6\t8\t10\t"
    assert_equal @size_2_table.row(3), "3\t3\t6\t"
    assert_equal @size_5_table.row(3), "3\t3\t6\t9\t12\t15\t"
  end
end
