class ApplicationController < ActionController::Base
  #Homepage
    def dashboard_selector
      render({:template => "/homepage_layouts/homepage.html.erb"})
    end
end
