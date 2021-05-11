class Group
    attr_reader :name, :names_array
    def initialize(name)      # overwriting the default initialize method
        @name = name
        @names_array = ["Alice", "Bob", "Charlie", "Dylan", "Eddie"]
    end

    def randomise_order
        @names_array.shuffle
    end

    def output_random_array
        randomise_order.each do |name|
            puts name
    end

    def add_name(name)
        @names_array.push(name)
    end

end

example = Group.new("Example")

pp example.randomise_order