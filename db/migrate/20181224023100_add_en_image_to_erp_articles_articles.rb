class AddEnImageToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :en_image, :string
  end
end
