require 'open-uri'
require 'nokogiri'

module RememberIt
  class Fetcher
    def self.fetch(url)
      doc = Nokogiri::HTML open(url)
      doc.css('script, link', 'noscript').each { |node| node.remove }
      doc.css('body').text
    end
  end
end
