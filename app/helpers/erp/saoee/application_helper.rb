module Erp
  module Saoee
    module ApplicationHelper
      # page title helper
      def title(page_title)
        content_for :title, page_title.to_s
      end

      # display full address
      def full_address(contact)
        str = []
        if I18n.locale == :vi
          str << contact.address if contact.address.present?
        elsif I18n.locale == :en
          str << contact.en_address if contact.en_address.present?
        elsif I18n.locale == :ja
          str << contact.ja_address if contact.ja_address.present?
        end
        #str << contact.district_name if contact.district_name.present?
        #str << contact.state_name if contact.state_name.present?
        str.join(", ")
      end

      # article link
      def service_link(service)
        erp_saoee.service_detail_path(service.id, title: url_friendly(service.name))
      end

      # product link
      def product_link(product)
        erp_saoee.product_detail_path(product.id, title: url_friendly(product.name))
      end

      # blog link
      def blog_link(blog)
        erp_saoee.blog_detail_path(blog.id, title: url_friendly(blog.name))
      end

      # recruitment link
      def recruitment_link(recruitment)
        erp_saoee.recruitment_detail_path(recruitment.id, title: url_friendly(recruitment.name))
      end

      # project link
      def project_link(project)
        erp_saoee.project_detail_path(project.id, title: url_friendly(project.name))
      end

      # article image
      def article_image(thumb, size)
        if size == '960_960'
          thumb.present? ? thumb : url_for('/frontend/images/noimage/960_960.png')
        elsif size == '960_540'
          thumb.present? ? thumb : url_for('/frontend/images/noimage/960_540.png')
        elsif size == '870_489'
          thumb.present? ? thumb : url_for('/frontend/images/noimage/870_489.png')
        elsif size == '420_236'
          thumb.present? ? thumb : url_for('/frontend/images/noimage/420_236.png')
        elsif size == '357_201'
          thumb.present? ? thumb : url_for('/frontend/images/noimage/357_201.png')
        elsif size == '116_99'
          thumb.present? ? thumb : url_for('/frontend/images/noimage/116_99.png')
        elsif size == '80_80'
          thumb.present? ? thumb : url_for('/frontend/images/noimage/80_80.png')
        end
      end
    end
  end
end
