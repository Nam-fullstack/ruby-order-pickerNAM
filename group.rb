class Group
    attr_reader :name, :names_array



    def initialize(group_name, file_path)      # overwriting the default initialize method
        @name = group_name
        @path = file_path
        @names_array = self.path_to_array       # using self to refer to the instance of the group
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

    def path_to_array
        begin
            array = File.readlines(get_file_path).map { |name| name.strip }    # reads in text from file and takes out whitespace
        rescue 
            puts "Invalid path, creating file"

            # w for write mode
            File.open(get_file_path, "w") do |file|
                file.write("")
            end
            array = []
        end
        return array
    end

    private
    def get_file_path
        @path
    end
end

test_group = Group.new("Test Group", './groups/test-group.txt')
test_group.output_random_array