class RemoveUserToLesson < ActiveRecord::Migration[6.1]
  def change
    remove_reference :lessons, :user, null: false, foreign_key: true
  end
end
