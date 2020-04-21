class AddCourseToLab < ActiveRecord::Migration[6.0]
  def change
    add_reference :labs, :course, foreign_key: true
  end
end
