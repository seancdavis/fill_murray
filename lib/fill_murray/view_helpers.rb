module FillMurray
  module ViewHelpers

  	def fill_murray(options = {})
  		if options[:height].blank?
  			if options[:width].blank?
	  			width = Random.new.rand(100...1000)
	  			height = Random.new.rand(100...1000)
	  		else
	  			height = width
	  		end  			
  		end
    	# image_tag "http://www.fillmurray.com/#{width}/#{height}"
    	"<img src=\"http://www.fillmurray.com/#{width}/#{height}\" class=\"#{options[:class]}\" alt=\"#{options[:alt]}\">"
    end

  end
end