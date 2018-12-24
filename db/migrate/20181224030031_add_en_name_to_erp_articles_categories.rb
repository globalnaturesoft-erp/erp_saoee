class AddEnNameToErpArticlesCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_categories, :en_name, :string
  end
end
