class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.integer :department_id
      t.string :name

      t.timestamps
    end
  end
end
