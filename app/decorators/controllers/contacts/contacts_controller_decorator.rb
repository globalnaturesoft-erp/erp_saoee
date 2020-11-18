Erp::Contacts::Backend::ContactsController.class_eval do
  # Only allow a trusted parameter "white list" through.
  def contact_params
    params.fetch(:contact, {}).permit(:parent_id, :image_url, :contact_type, :is_customer, :is_supplier, :code, :name,
      :company_name, :phone, :address, :tax_code, :birthday,
      :email, :gender, :note, :fax, :website, :archived, :user_id,
      :country_id, :state_id, :district_id,
      :hotline, :en_name, :en_address,
      :ja_name, :ja_address)
  end
end