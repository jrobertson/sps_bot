#!/usr/bin/env ruby

# file: sps_bot.rb

require 'sps_chat'
require 'botbase'


class SpsBot < SPSChat  
  
  def initialize(host: '127.0.0.1', port: '8080', userid: 'bot', room: '', 
                 config: nil, typing_mode: false)
    
    super(host: host, port: port, userid: userid, room: room)
    @bot = BotBase.new config
    @typing_mode = typing_mode
    
  end  

  def onincoming(sender, msg, typing_mode=false)
    
    if not typing_mode then
      #msg = 'tim'
      
      response = @bot.received sender, msg
    
      self.send response
    end

  end

end 
