module ApplicationHelper

	# Returns the page title dynamically
	def full_title(page_title)

		#Default Title Prefix
		base_title = "BestBay"
		
		if(page_title.empty?)
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
