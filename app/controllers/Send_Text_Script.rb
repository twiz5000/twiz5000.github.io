#!/usr/bin/env ruby.exe
require 'twilio-ruby'
 
account_sid = "ACd3ee1520309b8e361ebb022bf33ed8be"
auth_token =  "9d61ecf7a468a75def73638fee6a192d"
client = Twilio::REST::Client.new account_sid, auth_token
 
from = "+14133627576" # Your Twilio number
 
friends = {
"+14136874333" => "Curious George",
"+17326909938" => "Boots",
"+14155551234" => "Virgil"
}
friends.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
  )
  puts "Sent message to #{value}"
end



#exception 1

# require 'twilio-ruby'
 
# begin
#     client = Twilio::REST::Client.new account_sid, auth_token
#     client.account.messages.create(
#       from => from_number,
#       to =>   to_number,
#       body => "Hello World"
#     )
# rescue Twilio::REST::RequestError => e
#     puts e.message
# end

# ### exception 2
# require 'twilio-ruby'
 
# # To find these visit https://www.twilio.com/user/account
# account_sid = "ACXXXXXXXXXXXXXXXXX"
# auth_token = "YYYYYYYYYYYYYYYYYY"
 
# begin
#     @client = Twilio::REST::Client.new account_sid, auth_token
#     @client.account.messages.create({
#         :from => '+1234567890',
#         :to => '+1234567890',
#         :body => 'Hello world'
#     })
# rescue Twilio::REST::RequestError => e
#     puts e.message
#end
