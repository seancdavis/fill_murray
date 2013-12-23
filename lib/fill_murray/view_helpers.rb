module FillMurray
  module ViewHelpers

  	def fill_murray(options = {})

  		## dimensions ##
      if !options[:ratio].nil?
        ratio = options[:ratio].split(':')
        # if ratio[0].to_i > 1 and ratio[1].to_i > 1
        if ratio[0].to_i < ratio[1].to_i
          ratio[1] = ratio[1].to_i / ratio[0].to_i
          ratio[0] = 1
          max = 1000 / ratio[1].to_i
          random = Random.new.rand(100...max)
        else
          ratio[0] = ratio[0].to_i / ratio[1].to_i
          ratio[1] = 1
          max = 1000 / ratio[0].to_i
          random = Random.new.rand(100...max)
        end
        # else
        #   random = Random.new.rand(100...1000)
        # end
        options[:width] = ratio[0].to_i * random
        options[:height] = ratio[1].to_i * random
      elsif options[:height].nil? and options[:width].nil?
        options[:width] = Random.new.rand(100...1000)
        options[:height] = Random.new.rand(100...1000)
      elsif options[:height].nil?
        options[:height] = options[:width]
      end

      ## person / subject ##
      case options[:person]
      when "Nick", "Cage", "Nick Cage"
        site = 'http://www.placecage.com'
      when "Steve", "Steven", "Segal", "Steven Segal"
        site = 'http://www.stevensegallery.com'
      else
        site = 'http://www.fillmurray.com'
      end

      ## effects ##
      if options[:grey] == true
        effect = 'g/'
      elsif options[:crazy] == true and site == 'http://www.placecage.com'
        effect = 'c/'
      end

      ## image_tag markup ##
    	image_tag "#{site}/#{effect}#{options[:width]}/#{options[:height]}", 
    		:alt =>  options[:alt] ? options[:alt] : nil, 
    		:class => options[:class] ? options[:class] : nil
    end

  end
end