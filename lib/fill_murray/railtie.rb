require 'fill_murray/view_helpers'
module FillMurray
  class Railtie < Rails::Railtie
    initializer "fill_murray.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end