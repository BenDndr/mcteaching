class AddBeginningToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :beginning, :string
  end
end
