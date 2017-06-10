class CreateThoughts < ActiveRecord::Migration[5.0]
  def change
    create_table :thoughts do |t|
      t.string :title
      t.string :slug
      t.string :meta_description
      t.text :introduction
      t.text :body
      t.date :date
      t.references :thought_category, foreign_key: true

      t.timestamps
    end
  end
end
