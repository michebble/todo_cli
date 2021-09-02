#!/usr/bin/env ruby

File.open("todo.txt", "r") do |file|
  file.readlines.each_with_index do |line, line_number|
    name, created, completed = line.chomp.split(",")
    printf("%3d - %s\n", line_number, name)
    printf(" Created : %s\n", created)
    unless completed.nil?
      printf(" Completed : %s\n", completed)
    end
  end
end
