class Sponsor < ActiveRecord::Base
	validates :name, presence: true
	validates :priority, presence: true

	has_attached_file :logo, default_url: "/images/noimg.png"
	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/ 
end
