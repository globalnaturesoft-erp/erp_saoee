class AddEnContentToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :en_content, :text
  end
end
