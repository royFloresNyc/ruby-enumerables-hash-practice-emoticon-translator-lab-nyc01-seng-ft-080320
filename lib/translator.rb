# require modules here
require 'yaml'
require 'pry'

def load_library(library)
  # code goes here
  YAML.load_file(library)
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

binding.pry 