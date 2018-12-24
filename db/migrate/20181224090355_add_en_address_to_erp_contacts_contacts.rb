class AddEnAddressToErpContactsContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_contacts_contacts, :en_address, :string
  end
end
