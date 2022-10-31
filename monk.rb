def keke(x)
  x.chars.join("ke")
end


def long_string(a)
  t=a.length.to_i
  if t >= 10
    return true
  else
    return false
  end
end



def menu
  puts "==Welcome to Kekeifier=="
  loop do
  puts "whats the word i need to see?"
  u_input= gets.chomp().to_s
    if u_input == "qq"
      puts "OK bye bye :("
      break
    elsif long_string(u_input)
      puts "phrase too long to KEKE... ." + "(#{u_input})"
    else
       puts "Your KEKE phrase: " +keke(u_input)
   end
 end
end

menu
