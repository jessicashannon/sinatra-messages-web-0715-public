class MessagesApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @messages = Message.all #creates instance variable storing all messages from database
    @body_class = "messages" #????

    erb :'messages'
  end

  post '/' do
    message = Message.new #new instance of Message class
    message.to = params['to'] # these methods were created by ActiveRecord
    message.from = params['from'] #We're taking the content side of the hash and assigning it ...
    message.content = params['content'] #to the Message object to persist it ...
    message.save # ... and we save it to the database.
  end

end
