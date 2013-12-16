module FillMurray
  module ViewHelpers

  	def say_hi
  		"hello"
  	end

    def fill_murray(width, height)
    	image_tag "http://www.fillmurray.com/#{width}/#{height}"
    end
    
  end
end