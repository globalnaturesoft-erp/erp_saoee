module Erp
  module Saoee
    module Frontend
      class ServiceController < Erp::Frontend::FrontendController
        def index
          @service_menus = Erp::Articles::Category.get_categories_by_alias_service
            .where(parent_id: nil)
            .order('erp_articles_categories.custom_order ASC')
          @services = Erp::Articles::Article.where(category_id: @service_menus.pluck(:id))
        end

        def detail
          @service = Erp::Articles::Article.find(params[:service_id])
          @service = @service
          @meta_keywords = @service.meta_keywords if @service.present?
          @meta_description = @service.meta_description if @service.present?
          @categories = Erp::Articles::Category.get_categories_by_alias_service
        end
      end
    end
  end
end