class AddUserIdToWordLists < ActiveRecord::Migration
  def change
    add_reference :word_lists, :user, index: true, foreign_key: true
  end
end
