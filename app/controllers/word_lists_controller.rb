class WordListsController < ApplicationController
  def create
    current_user.word_lists.create(word_lists_params)
    redirect_to home_index_path
  end

  def show
    @word_list = current_user.word_lists.find(params[:id])
    @words = @word_list.words
  end

  def edit
    @word_list = current_user.word_lists.find(params[:id])
    @words = @word_list.words
    render template: 'home/new'
  end

  def update
    @word_list = current_user.word_lists.find(params[:id])
    @word_list.update_attributes!(word_lists_params)
    redirect_to home_index_path
  end

  def word_lists_params
    params.require(:word_list).permit(:name, :words_str)
  end
end
