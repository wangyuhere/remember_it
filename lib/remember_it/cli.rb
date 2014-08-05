require 'readline'

module RememberIt
  class Cli

    def self.run
      new.run
    end

    def run
      loop do
        cmd, param = Readline.readline("> ", true).chomp.split /\s+/, 2
        case cmd.downcase
          when 'exit', 'quit'
            break
          when 'help', '?'
            help
          when 'add'
            add param
          when 'search'
            search param
          else
            puts 'Invalid command!'
        end
      end
      puts 'Bye bye!'
    end

    protected

    def help
      data = [
        ['add', 'Add a memory by url, usage: add URL'],
        ['search', 'Search by keywords, usage: search KEYWORDS'],
        ['help', 'Show avaiable commands'],
        ['exit', 'Exit the cli']
      ].map { |c| {Command: c.first, Description: c.last} }
      Formatador.display_table data
    end

    def add(url)
      mem = Memory.generate url
      puts "Added #{url} [#{mem.id}]"
    end

    def search(query)
      re = Memory.search query
      if re.total > 0
        data = re.map { |d| {ID: d.id, URL: d.url}  }
        Formatador.display_table data
      end
      puts "Found #{re.total} memories."
    end
  end
end
