class AddLengthToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :length, :string
  end
end
