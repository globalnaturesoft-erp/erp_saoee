module Erp
  module Saoee
    module Frontend
      class RecruitmentController < Erp::Frontend::FrontendController
        def index
          @recruitments = Erp::Articles::Article.get_recruitments(params).paginate(:page => params[:page], :per_page => 12)
          if params[:cat_id].present?
            @category = Erp::Articles::Category.find(params[:cat_id])
          end
        end
        
        def detail
          @recruitment = Erp::Articles::Article.find(params[:recruitment_id])
          
          @meta_keywords = @recruitment.meta_keywords
          @meta_description = @recruitment.meta_description
          @newest_recruitments = Erp::Articles::Article.get_recruitments.where.not(id: @recruitment.id)
            .order('erp_articles_articles.created_at DESC')
            .limit(10)
        end
      end
    end
  end
end