class TopsController < ApplicationController
  
   def index
    @tops = Library.order("created_at DESC")
   end
end
