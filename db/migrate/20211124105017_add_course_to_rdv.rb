class AddCourseToRdv < ActiveRecord::Migration[6.1]
  def change
    add_column :rdvs, :course, :string
  end
end
