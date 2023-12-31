class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :ingredients
      t.text :steps
      t.string :image
      t.string :category

      t.timestamps
    end
  end
end
