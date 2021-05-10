require_relative "methods"


group = ["alice", "bob", "charlie", "dylan"]

while true
    # puts "There are #{group.length == 1 ? '1 member' : group.length.to_s + ' members'} in the group"
    output_group_size(group.length)


    case menu_input_select
    when 1
        add_member_to_group(group)
    when 2
        puts "Random group output:"
        # TO DO - Output random group
        random_order_loop_running = true
        while random_order_loop_running
            output_random_group_order(group)

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