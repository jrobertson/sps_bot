#!/usr/bin/env ruby

# file: sps_bot.rb

require 'sps_chat'


class SpsBot < SPSChat  
  
  def initialize(host: 'localhost', port: '8080', userid: 'bot')
    
    super(host: host, port: port, userid: userid)
    
  end
  
  def onincoming(sender, msg)

    case msg      
    when /what's the time\?/i
      self.send 'The time is ' + Time.now.strftime("%-I:%M%p")
    when /hello?/i
      self.send "hello #{sender}, how can I help you?" % sender
    else
      self.send "I'm sorry, I don't understand what you said."
    end
    
  end

end 
