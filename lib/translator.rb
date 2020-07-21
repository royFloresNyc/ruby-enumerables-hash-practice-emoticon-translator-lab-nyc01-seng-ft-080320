# require modules here
require 'yaml'
require 'pry'

def load_library(library)
  # code goes here
  yml_hash = YAML.load_file(library)
  yml_hash.each do |meaning, array_of_emoticons|
    yml_hash[meaning][:english] = array_of_emoticons.first
    yml_hash[meaning][:japanese] = array_of_emoticons.last
  end  
  yml_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
