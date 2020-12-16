require 'yaml'
require 'pry'

def load_library(path)
 
end	

def get_japanese_emoticon
  
end

def get_english_meaning(emoticons, emoticon)
  result = ''
  library = load_library(emoticons)
  if library["get_meaning"].keys.include?(emoticon)
    result = library["get_meaning"][emoticon]
  else
    result = "Sorry, that emoticon was not found"
  end
  result
end