class AddEnDescriptionToErpProjectsProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_projects_projects, :en_description, :text
  end
end
