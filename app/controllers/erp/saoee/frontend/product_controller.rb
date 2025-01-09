module Erp
  module Saoee
    module Frontend
      class ProductController < Erp::Frontend::FrontendController
        def index
          @product_menus = Erp::Articles::Category.get_categories_by_alias_product
            .where(parent_id: nil)
            .order('erp_articles_categories.custom_order ASC')
          @products = Erp::Articles::Article.where(category_id: @product_menus.pluck(:id))
        end

        def detail
          if params[:cat_id].present?
            @current_menu = Erp::Articles::Category.find(params[:cat_id])
            @products = Erp::Articles::Article.where(category_id: @current_menu.id)
            @product = @products.last
            @meta_keywords = @product.meta_keywords if @product.present?
            @meta_description = @product.meta_description if @product.present?

            @categories = Erp::Articles::Category.get_categories_by_alias_product
                  .where.not(id: @current_menu.id)
                  .order('erp_articles_categories.custom_order ASC')
          end
        end
      end
    end
  end
end