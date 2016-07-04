require 'anemone'
require 'mechanize'
class Email_Mod
    def initialize
        @reg = /\A[^@\s]+@([-a-zA-Z0-9]{1,63}\.)+[a-zA-Z0-9]{2,63}\z/
    end
    def act(url)
        @mail = []
        Anemone.crawl(url) do |anemone|
		    anemone.on_every_page do |page|
    			words = page.body.to_s.gsub("\n", " ").gsub("\t", " ").gsub("&nbsp;", " ").split(" ")
    		    words.each {|w| word = w.split(">",2).last.gsub(%r{</?[^>]+?>}, ''); word =~ @reg ? (@mail << word.split(" ", 2).last) : w=w}
    	        @mail.reject {|e| e == nil }
    	        @mail.uniq!
    	        @mail.each {|m| m.empty? ? m = m : (p m)}
    		end	
        end
    end
end
