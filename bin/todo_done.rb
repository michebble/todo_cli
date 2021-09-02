#!/usr/bin/env ruby

task_number = ARGV.shift.to_i

File.open("todo.txt", "r") do |file|
  File.open("todo.txt.new", "w") do |new_file|
    file.readlines.each_with_index do |line, line_number|
      name, created, completed = line.chomp.split(",")
      if task_number.eql?(line_number)
        new_file.puts("#{name},#{created},#{Time.now}")
        puts "Task #{line_number} completed"
      else
        new_file.puts("#{name},#{created},#{completed}")
      end
    end
  end
end

`mv todo.txt.new todo.txt`
