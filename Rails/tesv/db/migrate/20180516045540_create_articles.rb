class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.timestamps
      t.decimal :price, precision: 8, scale: 2
    end
  end
end
