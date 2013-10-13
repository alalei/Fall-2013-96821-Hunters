# Author::    Hunters  (mailto:fall-2013-hunters@sv.cmu.edu)
# Copyright:: Copyright (c) 2013 Carnegie Mellon University
# License::   Distributes under the same terms as Ruby

# This class is the helper of the BestBay application
module ApplicationHelper

	# Returns the page title dynamically
=begin
	def full_title(page_title)

		#Default Title Prefix
		base_title = "BestBay"
		
		if(page_title.empty?)
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
=end
end
