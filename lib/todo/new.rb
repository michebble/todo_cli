require_relative "io"

module Todo
  class New
    class << self
      include Todo::IO
      def call(new_task, file_name)
        File.open(file_name, "a") do |file|
          write_todo(file, new_task)
          puts "Task added."
        end
      end
    end
  end
end
