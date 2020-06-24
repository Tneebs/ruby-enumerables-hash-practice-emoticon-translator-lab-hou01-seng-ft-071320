require "yaml" # require modules here
require 'pry'

def load_library(file_path)
   emoticons = YAML.load_file("lib/emoticons.yml")        # code goes here
   
   translation = emoticons.each_with_object({}) do |(key,value), final_hash|
     if !final_hash[key]
       final_hash[key] = {
         :english => value[0],
         :japanese => value[1]
       }
   end
   translation
 end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file_path, j_emoticons)
  library = load_library(file_path)        # code goes here
  result = library.each do |emotion,lang|
    lang.each do |inner_key,
  binding.pry
end
end