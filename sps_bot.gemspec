Gem::Specification.new do |s|
  s.name = 'sps_bot'
  s.version = '0.2.1'
  s.summary = 'The sps_bot gem allows you to chat with your very own bot through the sps_chat gem.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/sps_bot.rb']
  s.add_runtime_dependency('sps_chat', '~> 0.1', '>=0.1.2')
  s.add_runtime_dependency('botbase', '~> 0.1', '>=0.1.0')
  s.signing_key = '../privatekeys/sps_bot.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/sps_bot'
end
