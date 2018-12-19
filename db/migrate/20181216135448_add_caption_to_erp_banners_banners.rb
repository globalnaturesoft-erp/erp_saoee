class AddCaptionToErpBannersBanners < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_banners_banners, :caption_1, :string
    add_column :erp_banners_banners, :caption_2, :string
  end
end
