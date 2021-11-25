class AddAvailableToLesson < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :available, :boolean, default: true
  end
end
