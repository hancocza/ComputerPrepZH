require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "course must be valid" do
    assert @course.valid?
  end

  test "name must be present" do
    @course.name = ""
    assert_not @course.valid?
  end

  test "description must be present" do
    @course.description = ""
    assert_not @course.valid?
  end

  test "department must be present" do
    @course.department = ""
    assert_not @course.valid?
  end

  test "number of sections must be present" do
    @course.sections = ""
    assert_not @course.valid?
  end
  
  test "number of sections must be positive" do
    @course.sections = -1
    assert_not @course.valid?
end
