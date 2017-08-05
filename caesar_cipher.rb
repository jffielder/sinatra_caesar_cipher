
#require 'sinatra/reloader' if development?
require './cc'
require 'sinatra'

get '/' do


  phrase = params["input"]
  shift = params["shift"].to_i
  message = ""

  if phrase != nil && shift != nil
  message = caesar_cipher(phrase,shift)
end
  erb :index, :locals => {:message => message}

end