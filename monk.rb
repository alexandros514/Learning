def keke(x)
  x.chars.join("ke")
end

def menu
  loop do
  puts "whats the word i need to see?"
  u_input= gets.chomp().to_s
   if u_input == "qq"
     break
   end
 end
end
