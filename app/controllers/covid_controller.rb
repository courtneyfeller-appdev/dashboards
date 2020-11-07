class CovidController < ApplicationController

  # Summary Page
    def covid_summary
      render({:template => "/covid_layouts/covid_main.html.erb"})
    end

  # State Page
    def covid_state
      render({:template => "/covid_layouts/covid_state.html.erb"})
    end

 

end