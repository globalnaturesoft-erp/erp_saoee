module Erp
  module Saoee
    module Frontend
      class ServiceController < Erp::Frontend::FrontendController
        def index
          @service_menus = Erp::Articles::Category.get_categories_by_alias_service
            .where(parent_id: nil)
            .order('erp_articles_categories.custom_order ASC')
        end
        
        def detail
          if params[:cat_id].present?
            @current_menu = Erp::Articles::Category.find(params[:cat_id])
            @services = Erp::Articles::Article.where(category_id: @current_menu.id)
            @service = @services.last
            @meta_keywords = @service.meta_keywords if @service.present?
            @meta_description = @service.meta_description if @service.present?
            
            @categories = Erp::Articles::Category.get_categories_by_alias_service
                  .where.not(id: @current_menu.id)
                  .order('erp_articles_categories.custom_order ASC')
          end
        end
      end
    end
  end
end