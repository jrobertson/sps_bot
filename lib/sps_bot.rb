#!/usr/bin/env ruby

# file: sps_bot.rb

require 'sps_chat'


class SpsBot < SPSChat  
  
  def initialize(host: 'localhost', port: '8080', userid: 'bot', 
                 service_modules: nil, room: '')
    
    super(host: host, port: port, userid: userid, room: room)
   
    @phrases = {}
    
    a = if service_modules then
    
      service_modules

    else
      
      h = {
          "^What's the time?" => "'The time is ' + Time.now.strftime(\"%-I:%M%p\")",
          "hello?" => %q("hello #{sender}, how can I help you?" % sender),
          'unknown' => "\"I'm sorry, I don't understand what you said.\""
      }
      [h]

    end
    
    a.each {|x|  @phrases.merge! x }
    
  end  

  def onincoming(sender, msg)
    
    r = @phrases.detect {|k,v|  msg =~ /#{k}/i }

    raw_msg = if r then
      r.last 
    else  
      unknown = h['unknown']
      unknown.last if unknown
    end
    
    response = eval raw_msg
    
    self.send response

  end

end 