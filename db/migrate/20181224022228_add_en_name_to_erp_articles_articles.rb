class AddEnNameToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :en_name, :string
  end
end
