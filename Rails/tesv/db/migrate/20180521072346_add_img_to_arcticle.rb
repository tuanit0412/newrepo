class AddImgToArcticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :imgurl, :string
  end
end
