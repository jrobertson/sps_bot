# Introducing the sps_bot gem

To chat with my SPS bot I did 2 things. First of all I ran the SPS bot in 1 IRB session as shown below:

    require 'sps_bot'

    bot = SpsBot.new host: 'sps', port: '59000'

Then I ran another IRB session and began to chat with the bot:

    require 'sps_chat'

    chat = SPSChat.new host: 'sps', port: '59000', userid: 'James'
    chat.send 'hello?'

<pre>bot: hello James, how can I help you?</pre>

    chat. send "what's the time?"

<pre>bot: The time is 11:51PM</pre>

## Resources

* sps_chat https://rubygems.org/gems/sps_chat
* sps_bot https://rubygems.org/gems/sps_bot

spsbot sps_bot chat chatbot
