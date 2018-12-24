class AddEnLocationToErpProjectsProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_projects_projects, :en_location, :string
  end
end
