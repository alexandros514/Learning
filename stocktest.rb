class Stock
  attr_accessor :name, :prices
  def initialize(name,prices)
    @name= name
    @prices= prices
  end
end



def load_stock(new_stock)
  name=new_stock[0].strip
  prices=new_stock[1..5]
  Stock.new(name,prices)
end



def load_stocks
  result=[]
  result= File.readlines("stockday1.csv").each do |line|
    result << load_stock(line.split(","))
  end

 #puts result[1].split(",")[0]
end




def system

  puts "Hello, welcome to stockpicker!!\n please read the news & choose wisely"
  puts "1)read news\n2)Pick stock\n3)Exit"
  answer=gets.chomp.to_i
  if answer==1
    puts "Microsoft will buy apple!!! the new movie will come out soon!\nFor all we know at this moment everything is a big lie.However, sometimes\nThe real truth is hidden between lines.Intel is a good pick, choose kotsovolos for the big\nWIN!! dont hesitate, samsung would fall, and amd is dead. "
    system
  else
    puts "How much do you want to invest?"
    budget=gets.chomp.to_i
    puts "Great!In which company would you like to invest?"
    puts @stock.name
  end
end


load_stocks

puts @name.class
puts "ruby on rails!"
