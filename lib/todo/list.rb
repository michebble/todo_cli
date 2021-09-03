require_relative "io"
module Todo
  class List
    class << self
      include Todo::IO
      def call(file_name)
        File.open(file_name, "r") do |file|
          file.readlines.each_with_index do |line, line_number|
            name, created, completed = read_todo(line)
            printf("%3d - %s\n", line_number, name)
            printf(" Created : %s\n", created)
            printf(" Completed : %s\n", completed) unless completed.nil?
          end
        end
      end
    end
  end
end
