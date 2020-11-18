class AddJpColumnsToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :jp_image, :string
    add_column :erp_articles_articles, :jp_name, :string
    add_column :erp_articles_articles, :jp_content, :text

    add_column :erp_articles_categories, :jp_name, :string
    add_column :erp_articles_categories, :jp_description, :text

    add_column :erp_projects_projects, :jp_name, :string
    add_column :erp_projects_projects, :jp_description, :text
    add_column :erp_projects_projects, :jp_location, :string

    add_column :erp_projects_project_images, :jp_name, :string

    add_column :erp_contacts_contacts, :jp_name, :string
    add_column :erp_contacts_contacts, :jp_address, :string
  end
end
