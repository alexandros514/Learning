
def keke
  puts "Write your secret msg: "
msg= gets.chomp().to_s
msgke=msg.split("").join("keke")
puts msgke
end

puts keke
