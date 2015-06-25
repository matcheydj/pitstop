class Post < ActiveRecord::Base
	attr_accessor :image_file_name, :image_content_type, :image_file_size, :image_updated_at
	belongs_to :user
	has_many :reviews

	has_attached_file :image, 
					  styles: { medium: "700x500#", small: "350x250>" },
					  storage: :s3,
                  	  :path => "/images/:id/:style.:extension",
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end