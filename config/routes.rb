Rails.application.routes.draw do
  # Homepage
    get("/", { :controller => "application", :action => "dashboard_selector"})

  # Currency Pages
    # First Currency Selector Page
      get("/forex", { :controller => "currency", :action => "start_currency"})

    # Second Currency Selector Page
      get("/forex/:first_currency", { :controller => "currency", :action => "end_currency"})

    # Currency Conversion Page
      get("/forex/:first_currency/:second_currency", { :controller => "currency", :action => "currency_conversion"})

  # Covid Pages
    # Summary Page
      get("/covid", { :controller => "covid", :action => "covid_summary"})

    # State Page
      get("/covid/:state", { :controller => "covid", :action => "covid_state"})

end
