class AddEnNameToErpProjectsProjectImages < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_projects_project_images, :en_name, :string
  end
end
