class CreateRdvs < ActiveRecord::Migration[6.1]
  def change
    create_table :rdvs do |t|

      t.timestamps
    end
  end
end
