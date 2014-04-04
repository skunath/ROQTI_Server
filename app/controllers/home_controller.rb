class HomeController < ApplicationController
  def index
    @ted = Portfolio.new("Ted")
    @james = Portfolio.new("James")


    apple = Stock.new("aapl")
    #apple.refresh_data("./Test_Data/aapl.csv")
    msft = Stock.new("msft")
    #msft.refresh_data("./Test_Data/msft.csv")

    #apple.day_closing_price("2012", "01", "19")
    #msft.day_closing_price("2012", "01", "19")


    #puts apple.num_shares_in_brokerage()
    @ted.add_asset(apple, 5, 500)
    @ted.add_asset(msft, 50, 26)
    #puts apple.num_shares_in_brokerage()


  end


  def basic_portfolio
    @james = Portfolio.new("James")
    apple = Stock.new("aapl")
    msft = Stock.new("msft")
    @james.add_asset(apple, 5, 500)
    @james.add_asset(msft, 50, 26)

    output = []
    passets = @james.get_assets()



    output << {"label" => "aapl", "value" => 5}
    output << {"label" => "msft", "value" => 15}
    output << {"label" => "goog", "value" => 50}


    render :json => output.to_json
  end

end
