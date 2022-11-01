
class Client
  attr_accessor :first_name, :last_name, :phone, :notes
  def initialize(first_name,last_name,phone,notes)
    @first_name= first_name
    @last_name= last_name
    @phone=phone
    @notes=notes

  end
end

def load_client
  new_client= File.read("client.csv").split(",")
  first_name=new_client[0].strip
  last_name=new_client[1].strip
  phone=new_client[2].strip
  notes=new_client[3].strip
Client.new(first_name, last_name, phone, notes)
end


@client = load_client



def menu
  puts "Choose action: \n""1)Name\n""2)Phone\n""3)Notes\n""4)Exit"
  user_input=gets.chomp().to_i
  if user_input==1
    puts @client.first_name + @client.last_name
  elsif user_input==2
    puts @client.phone
  elsif user_input==3
    puts @client.notes
  else
    return
  end
end

puts menu
