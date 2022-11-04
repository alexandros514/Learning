def stocklook
result=[]
result= File.read("stockday1.csv").split("\n")
stock1=result[0].split(",")[0]
stock2=result[1].split(",")[0]
stock3=result[2].split(",")[0]
stock4=result[3].split(",")[0]
stock5=result[4].split(",")[0]
stock6=result[5].split(",")[0]
stock7=result[6].split(",")[0]
stock8=result[7].split(",")[0]

allstocks=stock1,stock2,stock3,stock4,stock5,stock6,stock7,stock8

apple=result[0].split(",")[1..5]
microsoft=result[1].split(",")[1..5]
kotsovolos=result[2].split(",")[1..5]
intel=result[3].split(",")[1..5]
amd=result[4].split(",")[1..5]
asus=result[5].split(",")[1..5]
samsung=result[6].split(",")[1..5]
plaisio=result[7].split(",")[1..5]

end



def stockpicker(a,s,d,f,g)
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
    puts
  end
end

system
