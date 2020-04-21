require 'test_helper'

class ComputerTest < ActiveSupport::TestCase
  test "computer must be valid" do
    assert @computer.valid?
  end
  test "computer name must be present" do
    @computer.name = ""
    assert_not @computer.valid?
  end
  test "room must be present" do
    @computer.description = ""
    assert_not @computer.valid?
  end
  test "barcode must be present" do
    @computer.barcode = ""
    assert_not @computer.valid?
  end
  test "department must be present" do
    @computer.department = ""
    assert_not @computer.valid?
  end
end
