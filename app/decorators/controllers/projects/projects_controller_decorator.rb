Erp::Projects::Backend::ProjectsController.class_eval do
  # Only allow a trusted parameter "white list" through.
  def project_params
    params.fetch(:project, {}).permit(
      :image, :customer_id, :area, :start_date, :completion_date, :category_id, :meta_keywords, :meta_description,
      :name, :location, :description,
      :en_name, :en_location, :en_description,
      :ja_name, :ja_location, :ja_description,
      :project_images_attributes => [ :id, :project_id, :name, :en_name, :ja_name, :image_url, :_destroy ])
  end
end