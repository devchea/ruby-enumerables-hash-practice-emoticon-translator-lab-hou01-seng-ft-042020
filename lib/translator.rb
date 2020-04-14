# require modules here
require "yaml"
require "pry"
emoticon_library = YAML.load_file('./lib/emoticons.yml')

def load_library (emoticon_library)
  # code goes here
  emoticon_library = YAML.load_file('./lib/emoticons.yml')
  emoticon_library.each do |emotion, emoticons|

    # binding.pry
    # emoticons.insert(0,'english'.to_sym)
    # emoticons.insert(-2,'japanese'.to_sym)
    # binding.pry
    # emoticon_library[emotion] = Hash[*emoticons]
    emoticon_library[emotion][:key] = 'english' 
    # binding.pry
  end
  emoticon_library
  binding.pry
end

def get_english_meaning(emoticon_library, emoticon_input)
  lib = load_library(emoticon_library)
  lib.each do |emotion, emoticons|
    if emoticon_input == emoticons[:japanese]
    # if emoticon_input == nil
      # binding.pry
      return emotion
    else
      return "Sorry, that emoticon was not found"
      #  binding.pry
    # else
      # return emotion
    # emoticon_input == emoticons[:japanese] ? emotion : "Sorry, that emoticon was not found"
    end
  end
end


def get_japanese_emoticon(emoticon_library, emoticons)
  lib = load_library(file)
  lib.each do |emotion, emoticons|
    if emoticon_input == emoticons[:english]
      return emotion
    else
      return "Sorry, that emoticon was not found"
    end
  end
end
