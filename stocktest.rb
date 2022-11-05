class Stock
  attr_accessor :name, :prices
  def initialize(name,prices)
    @name= name
    @prices= prices
  end
end



def load_stock(new_stock)
  name=new_stock[0].strip
  prices=new_stock[1..5].strip
  Stock.new(name,prices)
end





def load_stocks
  result=[]
  result= File.read("stockday1.csv").each do |line|
    result << load_stock(line.split(","))
  end
  result
end


load_stocks
