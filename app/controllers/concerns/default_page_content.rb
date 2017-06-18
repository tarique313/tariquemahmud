module DefaultPageContent
	extend ActiveSupport::Concern

	included do
		before_filter :set_page_defaults
	end 

	def set_page_defaults
		@page_title = "Gazi Tarique Mahmud | My Portfolio Website"
		@seo_keywords = "Gazi Tarique Mahmmud, Ruby, Ruby on Rails 5, Ruby on Rails, Bangladesh, Ruby on Rails Bangladesh, Paribagh, Dhaka, RoR"
	end
end