def keke(x)
  x.chars.join("ke")
end


def long_string(a)
  a.length.to_i >= 10
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
      puts "phrase too long to KEKE... .(#{u_input})"
    else
      newkeke=keke(u_input)
      puts "Your KEKE phrase: " + newkeke
      puts "save it?[Y][N]"
      answer=gets.chomp()
      if answer == "Y"
        File.write("monk.txt", "Your KEKE phrase: #{newkeke}")
      end
    end
  end
end

menu
