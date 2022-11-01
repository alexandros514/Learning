
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
  new_client= File.read("client.csv").split
end


client = load_client
puts "==CLIENT DATA== Name:#{client.first_name}, Surname:#{client.last_name}, Phone:#{client.phone}, Notes:#{client.notes}"
