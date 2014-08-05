require 'elasticsearch/persistence/model'

module RememberIt
  class Memory
    include Elasticsearch::Persistence::Model

    attribute :content, String
    attribute :url, String

    def self.generate(url)
      text = Fetcher.fetch url
      text.gsub! /\n+\s*/, "\n"

      create content: text, url: url
    end

    def to_s
      "<id: #{id}, url: #{url}>"
    end
  end
end
