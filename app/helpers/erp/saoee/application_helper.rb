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
        str << contact.address if contact.address.present?
        str << contact.district_name if contact.district_name.present?
        str << contact.state_name if contact.state_name.present?
        str.join(", ")
      end
      
      # article link
      def service_link(service)
        erp_saoee.service_detail_path(service.id, title: url_friendly(service.name))
      end
      
      # blog link
      def blog_link(blog)
        erp_saoee.blog_detail_path(blog.id, title: url_friendly(blog.name))
      end
      
      # article image
      def article_image(thumb, size)
        if size == '960_540'
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
