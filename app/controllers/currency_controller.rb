class CurrencyController < ApplicationController

  #First Currency Selector Page
    def start_currency
      raw_data = open("https://api.exchangerate.host/symbols").read
      parsed_data = JSON.parse(raw_data)
      symbols_hash = parsed_data.fetch("symbols")
      @array_of_symbols = symbols_hash.keys

      render({:template => "/currency_layouts/firstcurrency.html.erb"})
    end

  #Second Currency Selector Page
    def end_currency
      raw_data = open("https://api.exchangerate.host/symbols").read
      parsed_data = JSON.parse(raw_data)
      symbols_hash = parsed_data.fetch("symbols")
      @array_of_symbols = symbols_hash.keys

      @first_currency = params.fetch("first_currency")

      render({:template => "/currency_layouts/secondcurrency.html.erb"})
    end

  #Currency Conversion Page
    def currency_conversion
      @first_currency = params.fetch("first_currency")
      @second_currency = params.fetch("second_currency")

      raw_data = open("https://api.exchangerate.host/convert?from=<%=@first_currency%>&to=<%=@second_currency%>").read
      @parsed_data = JSON.parse(raw_data)

      render({:template => "/currency_layouts/convertedcurrency.html.erb"})
    end

end
