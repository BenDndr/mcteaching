class AddLessonRefToRdv < ActiveRecord::Migration[6.1]
  def change
    add_reference :rdvs, :lesson, null: false, foreign_key: true
  end
end
