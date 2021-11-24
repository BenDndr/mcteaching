class AddUserToRdv < ActiveRecord::Migration[6.1]
  def change
    add_reference :rdvs, :user, null: false, foreign_key: true
  end
end
