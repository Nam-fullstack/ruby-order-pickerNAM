require_relative "methods"
require_relative "group"
require_relative "command_line_args"

group ||= Group.new("Melbourne FlexTrack", "./groups/melb-fx1.txt")

# ||= or equals operator, checks if it exists, it's going to ignore what happens after the =
# if it hasn't been set yet then i'll assign. 

while true
    output_group_size(group_instance.names_array.length)
    case menu_input_select
    when 1
        puts "Enter name to add"
        name_input = gets.chomp
        group_instance.add_name(name)
        puts "Added #{name_input} to group"

    when 2
        puts "Random group output:"
        random_order_loop_running = true
        while random_order_loop_running
            group_instance.output_random_array
            puts "Press 1 to go back"
            puts "Press 2 to quit"
            puts "Press any other key to regenerate order of random group"
            choice = gets.chomp.to_i
            if choice == 1
                random_order_loop_running = false
            elsif choice == 2
                quit_program
            else
                wait_clear(1)
            end
        end
    when 3 
        puts "The random user is #{group_instance.names_array.sample.capitalize}"
    when 4
        quit_program(group_instance)
    else
        puts "Invalid input, please try again."    
    end
    wait_clear(1.5)
end


puts "Goodbye! Thanks for using."