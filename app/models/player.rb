class Player < ActiveRecord::Base
	validates :name, presence: true
	validates :number, presence: true
	validates :position, presence: true


	has_attached_file :image, default_url: "/images/noimg.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ 
end
