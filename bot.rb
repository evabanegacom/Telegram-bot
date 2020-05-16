require 'telegram/bot'

token = '1268237537:AAEPOis5di-wvk52A2KXoiirefvkQ_OiRlE'
sample_greeting = ['fine', 'good', "i'm okay"]
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    result = message.text.downcase
    if result == 'hi'
      bot.api.send_message(chat_id: message.chat.id, text: 'Good day Mr fortunatus  i am a bot my name is samuel your Nephew told me you have a birthday today so how are you')
    elsif sample_greeting.include?(result)
      bot.api.send_message(chat_id: message.chat.id, text: 'so whats the plan for today')
    elsif result.eql?('nothing much')
      bot.api.send_message(chat_id: message.chat.id, text: 'throw a party')
    elsif result.eql?('lol')
      bot.api.send_message(chat_id: message.chat.id, text: 'samuel told me a lot about you he kept talking about you all the tims so i decided to meet you the best way i can')
    elsif result.eql?('what did he tell you about me')
      bot.api.send_message(chat_id: message.chat.id, text: 'A couple of nice things but what interests me is the way he said them. he never really talks about people the way he did talk about you')
    elsif result.eql?('he is also a nice person')
      bot.api.send_message(chat_id: message.chat.id, text: 'yeah, maybe but i am not impressed with my design as a bot. he should have done better')
    elsif result.eql?('he is still learning')
      bot.api.send_message(chat_id: message.chat.id, text: 'yeah, whatever. i am here to talk about you not my design or precious')
    elsif result.eql?('my wife had her birthday three days ago and my daughter yesterday')
      bot.api.send_message(chat_id: message.chat.id, text: 'yes, he told me that your family is packed with may borns')
    elsif result.eql?('yes, me my wife and my daughter including samuel')
      bot.api.send_message(chat_id: message.chat.id, text: 'my name is samuel i dont have a birthday')
    elsif result.eql?('i call precious samuel also')
      bot.api.send_message(chat_id: message.chat.id, text: 'please change it i dont fancy sharing a name with him')
    elsif result.eql?('lolz')
      bot.api.send_message(chat_id: message.chat.id, text: 'it was nice meeting you happy birthday i will be taken off the server now')
    else
      bot.api.send_message(chat_id: message.chat.id, text: "look at the commands precious told me to expect from you just type them one after another and i will give responses
      \n command1: hi \n command 2: fine or good or i'm okay \n command3 :nothing much \n command 4: lol \n command5: what did he tell you about me \n command 6: he is also a nice person
      \n command 7: he is still learning \n command 8: my wife had her birthday three days ago and my daughter yesterday \n command 9: yes, me my wife and daughter including samuel \n command 10: i call precious samuel also \n command 11: lolz" )
    end
  end
end
