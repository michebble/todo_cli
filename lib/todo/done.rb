require_relative "io"
module Todo
  class Done
    class << self
      include Todo::IO
      def call(task_number, file_name)
        File.open(TODO_FILE, "r") do |file|
          File.open("#{TODO_FILE}.new", "w") do |new_file|
            file.readlines.each_with_index do |line, line_number|
              name, created, completed = read_todo(line)
              if task_number.eql?(line_number)
                write_todo(new_file, name, created, Time.now)
                puts "Task #{line_number} completed"
              else
                write_todo(new_file, name, created, completed)
              end
            end
          end
        end
        `mv #{TODO_FILE}.new #{TODO_FILE}`
      end
    end
  end
end
