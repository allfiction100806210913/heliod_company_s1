class TopsController < ApplicationController
  before_action :first_card, only: [:index]
  before_action :library_rundam_five, only: [:index, :show]
  def index
  end
  
  private

  def first_card
    all_card = Library.all
    @first_card = all_card.first(1)
  end

  def library_rundam_five
    @library_rundam_five = Library.order("RAND()").limit(5)
  end
   
end
