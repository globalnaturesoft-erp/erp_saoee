Erp::Articles::Backend::CategoriesController.class_eval do
  # Only allow a trusted parameter "white list" through.
  def category_params
    params.fetch(:category, {}).permit(
      :img_icon, :parent_id, :alias,
      :name, :description,
      :en_name, :en_description,
    )
  end
end