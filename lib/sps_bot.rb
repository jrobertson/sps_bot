#!/usr/bin/env ruby

# file: sps_bot.rb

require 'sps_chat'
require 'botbase'


class SpsBot < SPSChat  
  
  def initialize(host: '127.0.0.1', port: '8080', userid: 'bot', 
                 room: '', config: nil, typing_mode: false, 
                 drb: {host: 'bot.home', port: '60600'})

    @bot = BotBaseDRbClient.new host: drb[:host], port: drb[:port]    
    @typing_mode = typing_mode
    super(host: host, port: port, userid: userid, room: room, 
          interactive: false)
    
  end  

  def onincoming(sender, msg, typing_mode=false)
    
    if not typing_mode then
      
      response = @bot.received sender, msg, mode: :chat
    
      self.send response unless response.empty?
    end

  end

end 
