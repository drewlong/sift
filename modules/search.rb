require 'rubygems'
require 'mechanize'

class Search_mod
    def initialize
        @agent = Mechanize.new
    end
    def act(args)
        hold = []
        (@t = args[:type]) if (args[:type]!= 0 and args[:type]!= nil)
        (@a = args[:att])  if (args[:att] != 0 and args[:att] != nil)
        (@i = args[:incl]) if (args[:incl]!= 0 and args[:incl]!= nil)
        items = @agent.get(@url).search('html').css(@t).map.to_a
        items.each do |item|
            (@a != nil) ? (hold << item.attributes[@a].to_s) : (hold << item.to_s)
        end
        items = []
        if @i != nil
            hold.each {|t|(items << t) if (t.include? @i)}
            hold = items
        end
        puts hold
    end
    def analyze(opts)
        type, att, incl = 0
        @url = opts[0]
        opts.each do |opt|
            case opt
                when '-t'
                    type = opts[opts.index(opt)+1]
                when '-a'
                    att = opts[opts.index(opt)+1]
                when '-i'
                    incl = opts[opts.index(opt)+1]     
            end
        end
        args = {
            :type   => type,
            :att    => att,
            :incl   => incl
        }
        act(args)
    end
end