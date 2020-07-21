# require modules here
require 'yaml'
require 'pry'

def load_library(library)
  yml_hash = YAML.load_file(library)
  yml_hash.each do |meaning, array_of_emoticons|
    yml_hash[meaning] = {}
    yml_hash[meaning][:english] = array_of_emoticons.first
    yml_hash[meaning][:japanese] = array_of_emoticons.last
  end  
  yml_hash
end

def get_japanese_emoticon(library, english_emoticon)
  emoticon_hash = load_library(library)
  emoticon_hash.each do |emotion, languages|
    if languages.has_value?(english_emoticon)
      return emotion
    end
  end
end

def get_english_meaning
  # code goes here
end
