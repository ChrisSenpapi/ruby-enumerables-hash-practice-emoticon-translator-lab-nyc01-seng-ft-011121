require 'yaml'
require 'pry'

def load_library(path)
 final_hash = {}
 YAML.load_file(path).each do |key, value|
   final_hash[key] = {}
   final_hash[key][:english] = value[0]
   final_hash[key][:japanese] = value[1]
 end
 final_hash
end	

def get_japanese_emoticon(path)
   emoji_hash = {}
  emoji_hash["get_meaning"] = {}
  emoji_hash["get_emoticon"] = {}
  emoji = YAML.load_file(path)
  emoji.each do |word, emojis|
    emoji_hash["get_meaning"][emojis[1]] = word
    emoji_hash["get_emoticon"][emojis[0]] = emojis[1]
  end
  emoji_hash
end

def get_english_meaning
  
end