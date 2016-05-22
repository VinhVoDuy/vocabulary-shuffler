class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @word_lists = current_user.word_lists.order(created_at: :desc)
  end

  def new
    @word_list = WordList.new(name: Time.zone.now.to_formatted_s(:long))
  end
end
