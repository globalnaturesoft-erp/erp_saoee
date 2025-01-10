module Erp
  module Saoee
    module Frontend
      class ProjectController < Erp::Frontend::FrontendController
        def index
          @projects = Erp::Projects::Project.all.order('erp_projects_projects.created_at DESC').paginate(:page => params[:page], :per_page => 24)
        end

        def detail
          @project = Erp::Projects::Project.find(params[:project_id])
          #@meta_keywords = @project.meta_keywords
          #@meta_description = @project.meta_description
          #@categories = Erp::Projects::Project.get_categories
          @newest_projects = Erp::Projects::Project.where.not(id: @project.id).newest_projects(20)
        end
      end
    end
  end
end