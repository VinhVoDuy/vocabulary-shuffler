class WordList < ActiveRecord::Base
  attr_accessor :words_str
  before_save :split_words

  def split_words
    self.words = words_str.split("\r\n")
  end
end
