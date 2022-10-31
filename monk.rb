def keke(x)
  x.chars.join("ke")
end

def menu
  puts "welcome to kekeifier"
  loop do
  puts "whats the word i need to see?"
  u_input= gets.chomp().to_s
    if u_input == "qq"
      puts "OK bye bye :()"
      break
    else
       puts keke(u_input)
   end
 end
end
