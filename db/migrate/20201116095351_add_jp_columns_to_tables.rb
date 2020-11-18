class AddJpColumnsToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :ja_image, :string
    add_column :erp_articles_articles, :ja_name, :string
    add_column :erp_articles_articles, :ja_content, :text

    add_column :erp_articles_categories, :ja_name, :string
    add_column :erp_articles_categories, :ja_description, :text

    add_column :erp_projects_projects, :ja_name, :string
    add_column :erp_projects_projects, :ja_description, :text
    add_column :erp_projects_projects, :ja_location, :string

    add_column :erp_projects_project_images, :ja_name, :string

    add_column :erp_contacts_contacts, :ja_name, :string
    add_column :erp_contacts_contacts, :ja_address, :string
  end
end
