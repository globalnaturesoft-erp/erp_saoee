# encoding: utf-8
module Erp
  module Articles
    class ArticleUploader < CarrierWave::Uploader::Base
    
      # Include RMagick or MiniMagick support:
      # include CarrierWave::RMagick
      include CarrierWave::MiniMagick
    
      # Choose what kind of storage to use for this uploader:
      storage :file
      # storage :fog
    
      # Override the directory where uploaded files will be stored.
      # This is a sensible default for uploaders that are meant to be mounted:
      def store_dir
        "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
      end
      
      version :system do
        process resize_to_fill: [150, 150]
      end
      
      version :thumb_960_960 do
        process resize_to_fill: [960, 960]
      end
      
      version :thumb_960_540 do
        process resize_to_fill: [960, 540]
      end
      
      version :thumb_870_489 do
        process resize_to_fill: [870, 489]
      end
      
      version :thumb_420_236 do
        process resize_to_fill: [420, 236]
      end
      
      version :thumb_357_201 do
        process resize_to_fill: [357, 201]
      end
      
      version :thumb_116_99 do
        process resize_to_fill: [116, 99]
      end
      
      version :thumb_80_80 do
        process resize_to_fill: [80, 80]
      end
    end
  end

end
