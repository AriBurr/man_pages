def man_pages()

  main_menu()

  while @action != 3
    case @action
      when 1
        command_line()
      when 2
        man_search()
      else
      puts "Error -- Please Try Again, Human!"
    end
  main_menu()
  end

  exit(0)

end

def main_menu()
  puts "CHEATSHEET"
  puts "1: Command Line"
  puts "2: Search"
  puts "3: Exit"
  puts "*****Make a selection*****"
  @action = gets.chomp.to_i
end

def command_line_menu()
  puts "*****Make a selection*****"
  puts "[1] mv\n[2] cp\n[3] mkdir\n[4] ls\n[5] rm\n[6] exit"
  @command_line = gets.chomp.to_i
end

def command_line()

  command_line_menu()

  while @command_line != 6
    case @command_line
      when 1
        puts `man mv`
      when 2
        puts `man cp`
      when 3
        puts `man mkdir`
      when 4
        puts `man ls`
      when 5
        puts `man rm`
      else
      puts "*****error*****"
    end
  command_line_menu()
  end
end

def man_search()
  puts "*****Enter search term*****"
  search =  gets.chomp
  puts `man #{search}`
end

man_pages()
