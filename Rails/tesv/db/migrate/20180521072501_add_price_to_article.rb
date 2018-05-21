class AddPriceToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :price, :decimal
  end
end
