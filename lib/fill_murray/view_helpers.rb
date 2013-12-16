module FillMurray
  module ViewHelpers

  	def fill_murray(width = nil, height = nil)
  		if height = nil
  			if width == nil
	  			width = Random.new.rand(100...1000)
	  			height = Random.new.rand(100...1000)
	  		else
	  			height = width
	  		end  			
  		end
    	image_tag "http://www.fillmurray.com/#{width}/#{height}"
    end

  end
end