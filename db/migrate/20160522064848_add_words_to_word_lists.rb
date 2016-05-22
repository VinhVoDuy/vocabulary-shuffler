class AddWordsToWordLists < ActiveRecord::Migration
  def change
    add_column :word_lists, :words, :text, array: true, default: []
  end
end
