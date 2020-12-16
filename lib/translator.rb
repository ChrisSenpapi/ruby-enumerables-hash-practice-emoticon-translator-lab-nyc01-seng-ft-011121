require 'yaml'
require 'pry'

def load_library(emoticons)
  new_hash = {}
  emoticons = YAML.load_file("./lib/emoticons.yml")
  emoticons.each do |meaning, emoticons|
    new_hash["get_meaning"] = {} if new_hash["get_meaning"] == nil
    new_hash["get_meaning"][emoticons[1]] = meaning
    new_hash["get_emoticon"] = {} if new_hash["get_emoticon"] == nil
    new_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  new_hash
end	

