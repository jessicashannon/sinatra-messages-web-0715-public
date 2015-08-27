# post_message.rb
require "net/http"
require 'uri'

puts ""
print "Who do you want to message? "
to = gets.chomp
print "Who are you? "
from = gets.chomp

print "Your message: "
content = gets.chomp

puts ""
print "Sending message..."

uri = URI("http://localhost:9292")
response = Net::HTTP.post_form(uri, 'to' => to, 'from' => from, 'content' => content)

# TODO: Post the message to the server
# How do you submit a POST request using Ruby?
# Maybe a library called Net::HTTP has a post method? Google.
if response.message == "OK" #??? Where did response come from? Why does it have a message method?
 puts "It worked :)"
else
 puts "Oops, something went wrong :("
end

puts ""
