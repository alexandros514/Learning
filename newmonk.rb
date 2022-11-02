class Client
  attr_accessor :first_name, :last_name, :phone, :notes
  def initialize(first_name,last_name,phone,notes)
    @first_name= first_name
    @last_name= last_name
    @phone=phone
    @notes=notes
  end

  def to_csv
    "#{first_name},#{last_name},#{phone},#{notes}"
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
  loop do
    puts "Choose action: \n 1)Name\n 2)Phone\n 3)Notes\n 4)Show CSV\n 5)Edit name\n 6)Edit last name\n 7)Edit Phone\n 8)Edit notes\n 0)Exit & Save"
    user_input=gets.chomp().to_i

    if user_input==1
      puts @client.first_name + @client.last_name
    elsif user_input==2
      puts @client.phone
    elsif user_input==3
      puts @client.notes
    elsif user_input==4
      puts @client.to_csv
    elsif user_input==5
      puts "Enter the name: "
      @client.first_name=gets.chomp().to_s
    elsif user_input==6
      puts "Enter the last name: "
      @client.last_name=gets.chomp().to_s
    elsif user_input==7
      puts "Enter new phone: "
      @client.phone=gets.chomp().to_i
    elsif user_input==8
      puts "Enter note: "
      @client.notes =gets.chomp().to_s

    else user_input==0
      File.write('client.csv', "#{@client.first_name},#{@client.last_name},#{@client.phone},#{@client.notes}")
      break
    end
  end
end

menu
