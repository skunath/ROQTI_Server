require "ROQTI/lib/ROQTI/asset.rb"
require "ROQTI/lib/ROQTI/security.rb"
require "ROQTI/lib/ROQTI/stock.rb"
require "ROQTI/lib/ROQTI/data_handler.rb"
require "ROQTI/lib/ROQTI/File_Handler.rb"
require "ROQTI/lib/ROQTI/portfolio.rb"
require "ROQTI/lib/ROQTI/account.rb"
require "ROQTI/lib/ROQTI/brokerage.rb"
class Temper
  def self.tester ()
    puts "tests"

    b = Brokerage.new("test")
  end

end