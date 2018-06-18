class AddColumsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sex, :string
    add_column :products, :styled, :string
  end
end
