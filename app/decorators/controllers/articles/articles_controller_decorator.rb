Erp::Articles::Backend::ArticlesController.class_eval do
  # Only allow a trusted parameter "white list" through.
  def article_params
    params.fetch(:article, {}).permit(
      :meta_keywords, :meta_description, :tags, :category_id,
      :image, :name, :content,
      :en_image, :en_name, :en_content
    )
  end
end