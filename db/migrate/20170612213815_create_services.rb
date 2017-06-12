class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.text :examples
      t.integer :position

      t.timestamps
    end
  end
end
