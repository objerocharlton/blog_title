#
# Create your "Blog" class in this file.
#
class Blog
	def initialize new_url
		@new_url = url
	end
	def latest_title
		new_html = Net::HTTP.get(URI.parse(@new_url))
		doc = Hpricot(new_html)		
             (doc/"/html/body/div[2]/div/div[2]/div/div/h3").inner_html	
	end
end

