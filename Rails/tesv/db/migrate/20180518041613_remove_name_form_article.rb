class RemoveNameFormArticle < ActiveRecord::Migration[5.2]
  def change
  	  remove_column :articles, :name, :string
  	end
end
