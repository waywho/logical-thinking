class CreateTeamMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :role
      t.text :biography
      t.integer :position

      t.timestamps
    end
  end
end
