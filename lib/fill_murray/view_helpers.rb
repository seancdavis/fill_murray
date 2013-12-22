module FillMurray
  module ViewHelpers

  	def fill_murray(width = nil, height = nil, options = {})
  		if height.blank?
  			if width.blank?
	  			width = Random.new.rand(100...1000)
	  			height = Random.new.rand(100...1000)
	  		else
	  			height = width
	  		end  			
  		end
      if options[:grey] == true
        g = "g/"
      end
    	image_tag "http://www.fillmurray.com/#{g}#{width}/#{height}", 
    		:alt =>  options[:alt] ? options[:alt] : nil, 
    		:class => options[:class] ? options[:class] : nil
    end

  end
end