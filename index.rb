
group = []

while true
    puts "Press 1 to add a member to the group"
    puts "Press 2 to display a random group"
    puts "Press 3 to quit"
    #take input from user
    menu_input = gets.chomp

    case menu_input
    when 1
        puts "Enter name"
        name = gets.chomp
        group.push(name)
    when 2
        puts "Random group output:"
        # TO DO - Output random group
    when 3
        # TO DO - Check they want to quit
        break
    else
        puts "Invalid input, please try again."    
    end
end