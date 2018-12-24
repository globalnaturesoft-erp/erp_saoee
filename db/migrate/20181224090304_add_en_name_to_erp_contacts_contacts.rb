class AddEnNameToErpContactsContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_contacts_contacts, :en_name, :string
  end
end
