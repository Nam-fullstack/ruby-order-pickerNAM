
group = ["alice", "bob", "charlie", "dylan"]

while true
    puts "There are #{group.length} members in the group"
    puts "Press 1 to add a member to the group"
    puts "Press 2 to display a random group"
    puts "Press 3 to display a random user"
    puts "Press 4 to quit"
    #take input from user
    menu_input = gets.chomp.to_i

    case menu_input
    when 1
        puts "Enter name"
        name = gets.chomp
        group.push(name)
    when 2
        puts "Random group output:"
        # TO DO - Output random group
        random_order_loop_running = true
        while random_order_loop_running
            # copied_group = group.clone
            # while copied_group.length > 0
            #     random_index = rand(copied_group.length - 1)        #gives random index value
            #     puts copied_group[random_index].capitalize
            #     copied_group.delete_at[random_index]
            # end

            group.shuffle.each do |name|
                puts name.capitalize
            end

            puts "Press 1 to go back"
            puts "Press 2 to quit"
            puts "Press any other key to regenerate order of random group"
            choice = gets.chomp.to_i
            if choice == 1
                random_order_loop_running = false
            elsif choice == 2
                puts "Goodbye"
                exit
            else
                sleep(1)
                system "clear"
            end
        end
    when 3 
        puts "The random user is #{group.sample}"
    when 4
        # TO DO - Check they want to quit
        puts "Type yes to quit"
        quit_choice = gets.chomp.downcase
        break if quit_choice == 'yes'
    else
        puts "Invalid input, please try again."    
    end
    sleep(1)
    system "clear"
end


puts "Goodbye! Thanks for using."