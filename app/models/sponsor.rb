class Sponsor < ActiveRecord::Base
	validates :name, presence: true
	validates :priority, presence: true
	
	# has_attached_file :featured_image, default_url: "/images/noimg.png"
	# validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/ 
end
