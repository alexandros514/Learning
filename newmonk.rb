
class Client
  attr_accessor :first_name, :last_name, :phone, :notes
  def initializer(first_name,last_name,phone,notes)
    @first_name= first_name
    @last_name= last_name
    @phone=phone
    @notes=notes

  end
end

def load_client
  new_client= File.read("client.csv").split(",")
  first_name=new_client[0]
  last_name=new_client[1]
  phone=new_client[2]
  notes=new_client[3]
Client.new(first_name, last_name, phone, notes)
end


client = load_client
puts "==CLIENT DATA== Name:#{client.first_name}, Surname:#{client.last_name}, Phone:#{client.phone}, Notes:#{client.notes}"
