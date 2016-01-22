class Article < ActiveRecord::Base
	belongs_to :admin_user

	validates :admin_user_id, presence: true
	validates :title, presence: true, length: { minimum: 5, maximum: 100 }
	validates :text, presence: true, length: { minimum: 50 }

	has_attached_file :featured_image, default_url: "/images/noimg.png"
	validates_attachment_content_type :featured_image, content_type: /\Aimage\/.*\Z/  
end
