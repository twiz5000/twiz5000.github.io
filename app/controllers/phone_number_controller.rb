#!/usr/bin/env ruby.exe
class PhoneNumberController < ApplicationController #Ruby Class: A Ruby class encapsulates a set of values and a set of operations. The values and the operations of a class are represented by the attributes of the class. In Ruby a class definition introduces a new type. The instances of a class type are called objects.

#THE LINKE TO VIEW  - phone_number_controller is like a folder (class obj, full .rb file) that contains files (method action, several methods within the code of .rb file). 
	
	#Views - > Phone_Number is a folder with the same name as the controller class obj (Directory obj) that contains HTML files  with the same name as method obj (Browser obj). 

# the <Application controler is example of INHERITENCE..
# I BELIEVE the parent is set of attributes and methods, so we are 1)making on overide to Application Controler Class, inheriting its attributes and methods, then overiding & adding additional methods, and defining it as a new class / object



	def submit # this is the method a.k.a action, which is being done onto the controller.. so SUBMIT is action done on PHONE_NUMBER
		 
 	@q=params["q"]

require 'twilio-ruby'
 
account_sid = "ACd3ee1520309b8e361ebb022bf33ed8be"
auth_token =  "9d61ecf7a468a75def73638fee6a192d"
client = Twilio::REST::Client.new account_sid, auth_token
 
from = "+14133627576" # Your Twilio number
 
friends = {
"+14136874333" => "Curious George",
#"+17326909938" => "Boots",
#"+14155551234" => "Virgil"
}
friends.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
  )
  puts "Sent message to #{value}"
end


	end




end