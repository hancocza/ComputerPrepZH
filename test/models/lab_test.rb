require 'test_helper'

class LabTest < ActiveSupport::TestCase
  test "lab must be valid" do
    assert @lab.valid?
  end
  test "lab name must be present" do
    @lab.name = ""
    assert_not @lab.valid?
  end
  test "lab number must be present" do
    @lab.number = ""
    assert_not @lab.valid?
  end
  test "lab number must be greater than 0" do
    @lab.number = 0
    assert_not @lab.valid?
  end
  test "lab number must be less than 17" do
    @lab.number = 17
    assert_not @lab.valid?
  end
  test "lab start date must be present" do
    @lab.startDate = ""
    assert_not @lab.valid?
  end
  test "lab end date must be present" do
    @lab.endDate = ""
    assert_not @lab.valid?
  end
  test "lab end date must not be before start date" do
    @lab.startDate = "04/19/2020"
    @lab.endDate = "04/18/2020"
    assert_not @lab.valid?
  end
end
