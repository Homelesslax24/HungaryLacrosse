module ApplicationHelper
	def title(page_title)
		content_for(:title) { page_title }
	end

	# def meta_description(meta_tag)
	# 	content_for(:meta_description) { meta_tag }
	# end

end
