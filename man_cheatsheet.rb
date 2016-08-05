# menu
def main_menu
  puts "***Main Menu***"
  puts '1. Command Line'
  puts '2. Search'
  puts '3. Exit'
  puts '** Make A Selection **'
  get_input
end

def get_input
  @input = gets.chomp
  check_input
end

def check_input
  if @input == '1' 
    command_menu
  elsif @input == '2'
    puts 'What woud you like to know?'
    search = gets.chomp
    puts `man #{search}`
  elsif @input == '3'
    exit(0)
  else
    puts "Bad input!"
    main_menu
  end
end

def command_menu
  puts 'Command Line Menu'
  puts '1. ls'
  puts '2. pwd'
  puts '3. cd'
  puts '4. mkdir'
  puts '5. Main Menu'
  command_input
end

def command_input
  @command = gets.chomp
  received_input
end

def received_input
  if @command == '1'
    puts `man ls`
  elsif @command =='2'
    puts `man pwd` 
  elsif @command == '3'
    puts `man cd`
  elsif @command == '4'
    puts `man mkdir`  
  elsif @command == '5'
    main_menu
  else
    puts "Invaild Input!"
    command_menu
  end
end

while true
  main_menu
end


