class AddEnNameToErpProjectsProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_projects_projects, :en_name, :string
  end
end
