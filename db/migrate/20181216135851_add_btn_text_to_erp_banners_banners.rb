class AddBtnTextToErpBannersBanners < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_banners_banners, :btn_text, :string
  end
end
