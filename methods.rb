require "colorize"
require "espeak"

def output_group_size(length)
    if length == 1
        puts "There is one member in the group"
    elsif length == 0
        puts "The group is empty"
    else
        puts "There are #{length} members in the group"
    end
end

def menu_input_select
    puts "Press 1 to add a member to the group"
    puts "Press 2 to display a random group"
    puts "Press 3 to display a random user"
    puts "Press 4 to quit"
    #take input from user
    menu_input = gets.chomp.to_i
end 

def output_random_group_order(collection)
    collection.shuffle.each_wth_index do |name, index|
        puts "#{index+1}. #{capitalize_multi_word_string(name)}".colorize(select_random_color)
        sleep(1)
        ESpeak::Speech.new(name).speak
    end
end

def select_random_color
    colours = String.colors.dup - (:black, :light_black)
    return colours.sample
end

def add_member_to_group(arr) 
    puts "Enter name"
    name = gets.chomp
    arr.push(name)
end

def capitalize_multi_word_string(str)
    str.split(" ").map { |word| word.capitalize }.join(" ")
end

def wait_clear(time)
    sleep(time)
    system "clear"
end

def quit_program
    puts "Type yes to quit"
    quit_choice = gets.chomp.downcase
    if quit_choice == 'yes'
        puts "Thanks for using group generator 9000"
        exit
    end
end