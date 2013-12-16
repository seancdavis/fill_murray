module FillMurray
  module ViewHelpers

  	def fill_murray(width, height, options = {})
  		if height.blank?
  			if width.blank?
	  			width = Random.new.rand(100...1000)
	  			height = Random.new.rand(100...1000)
	  		else
	  			height = width
	  		end  			
  		end
    	image_tag "http://www.fillmurray.com/#{width}/#{height}", 
    		options[:alt] ? :alt => options[:alt] : nil, 
    		options[:class] ? :class => options[:class] : nil
    end

  end
end