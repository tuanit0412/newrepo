class AddNameToArcticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :name, :string
    add_column :articles, :imgurl, :string
    add_column :articles, :price, :decimal
  end
end
