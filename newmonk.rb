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

def load_client(new_client)
  first_name=new_client[0].strip
  last_name=new_client[1].strip
  phone=new_client[2].strip
  notes=new_client[3].strip
  Client.new(first_name, last_name, phone, notes)
end

def load_clients
  result=[]
  File.readlines("client.csv").each do |line|
    result << load_client(line.split(","))
  end
  result
end


def list_clients(c)
  count = c.count
  result = []
  (0...count).each do |idx|
    result << "#{idx + 1}) #{c[idx].first_name}"
  end
  result.join("\n")
end

def monklock
  puts " write your private notes"
  private_notes =gets.chomp().to_s
  words=private_notes.chars.map { |c| c.ord }
  swords=words.map { |c| c+10}
  File.write('client_note.txt',swords.map {|c| c.chr}.join)
end

def monkopen
  private_notes=File.open("client_note.txt")
  sav_notes=private_notes.read.chars.map { |e| e.ord }
  shift_notes=sav_notes.map { |e| e-10 }
  puts shift_notes.map {|e| e.chr}.join
end


def open_notes
  puts  "what is your PIN?"
  input_pin=gets.chomp.to_i
  if input_pin == 1551
    puts "Your private notes: "
    monkopen
  else
    puts "WRONG GET OUT"
  end
end




def menu
  all_clients=load_clients
  puts "choose a client\n" + list_clients(all_clients)
  index=gets.chomp.to_i - 1
  @client=all_clients[index]
  puts "what do you like to do for #{@client.first_name}"
  loop do
    puts "Choose action: \n 1)Name\n 2)Phone\n 3)Notes\n 4)Show CSV\n 5)Edit name\n 6)Edit last name\n 7)Edit Phone\n 8)Edit notes\n 9)BACK TO MENU\n 10)lock note\n 11)open private notes\n 0)Exit & Save"
    user_input=gets.chomp().to_i

    if user_input==1
      puts "#{@client.first_name} #{@client.last_name}"
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
    elsif user_input==9
      menu
    elsif user_input==10
      puts"Your notes would be locked... please be sure you remember your PIN to open the file"
      monklock
    elsif user_input==11
      open_notes


    elsif user_input==0
      File.write('client.csv', all_clients.map{ |e| e.to_csv }.join("\n") )    # [Cient first_name: John... , Client first_name: Jane , Client ] "John, Doe, ... \nKostas, K..."
      break
    end
  end
end

menu
