class AddTypeInArticle < ActiveRecord::Migration
  def change
    add_column :articles, :category, :string
    add_column :articles, :sub_category, :string
  end
end
