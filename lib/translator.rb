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

def get_japanese_emoticon(file_path, e_emoticons)
  library = load_library(file_path)        # code goes here
  japanese = ""
  apology = "Sorry, that emoticon was not found"
  library.each do |emotion,lang|
    lang.each do |inner_key,emote|
      if emote == e_emoticons
        japanese = emotion
      end
    end
    if japanese == ""
      japanese = apology
    end
  end
  japanese
end

def get_english_meaning(file_path, j_emoticons)
  library = load_library(file_path)        # code goes here
  english = ""
  apology = "Sorry, that emoticon was not found"
  library.each do |emotion,lang|
    lang.each do |inner_key,emote|
      if emote == j_emoticons
        english = emotion
    end
  end
  if english == ""
    english = apology
    end
  end
  english
end

# def get_english_meaning(file,j_emoticon)
#   emoticons = load_library(file)
#   eng_meaning = ""
#   apology = "Sorry, that emoticon was not found"
#   emoticons.each do |emotion, lang|
#     # binding.pry
#     lang.each do |inner_key,emoticon|
#       if emoticon == j_emoticon
#         eng_meaning = emotion
#         # binding.pry
#       end
#     end
#     if eng_meaning == ""
#       binding.pry
#       eng_meaning = apology
#     end  
#   end
#   eng_meaning
# end