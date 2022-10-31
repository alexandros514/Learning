def keke(x)
  x.chars.join("ke")
end


def menu
  puts "==Welcome to Kekeifier=="
  loop do
  puts "whats the word i need to see?"
  u_input= gets.chomp().to_s
    if u_input == "qq"
      puts "OK bye bye :("
      break
    elsif u_input.length >= 10
      puts "phrase too long to KEKE... ." + "(#{u_input})"
    else
       puts "Your KEKE phrase: " +keke(u_input)
   end
 end
end

menu
#"phrase too long to KEKE... ." + "(#{u_input})"
# long_string("#{u_input}")
# u_input.long_string
