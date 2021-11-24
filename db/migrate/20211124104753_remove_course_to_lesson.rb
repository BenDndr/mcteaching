class RemoveCourseToLesson < ActiveRecord::Migration[6.1]
  def change
    remove_column :lessons, :course
  end
end
