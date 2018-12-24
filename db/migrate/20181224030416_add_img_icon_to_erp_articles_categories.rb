class AddImgIconToErpArticlesCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_categories, :img_icon, :string
  end
end
