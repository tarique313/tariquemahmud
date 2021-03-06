class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_no_cache

 def set_no_cache
	response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
	response.headers["Pragma"] = "no-cache"
	response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
end
  	include DeviseWhitelist
	include SetSource
	include CurrentUserConcern
	include DefaultPageContent
end

