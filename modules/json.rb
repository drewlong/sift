require 'json'
require 'open-uri'

class JSON_mod
  def initialize
    #
  end
  def act(url)
    raw = open(url)
    page = JSON.parse(raw.read)
    puts pg = JSON.pretty_generate(page)
  end
end
  