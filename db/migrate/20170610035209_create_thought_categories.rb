class CreateThoughtCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :thought_categories do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
