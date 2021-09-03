module Todo
  module IO
    private

    def write_todo(file, name, created = Time.now, completed = "")
      file.puts("#{name},#{created},#{completed}")
    end

    def read_todo(line) = line.chomp.split(",")
  end
end
