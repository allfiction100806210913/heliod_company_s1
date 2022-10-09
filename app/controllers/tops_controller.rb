class TopsController < ApplicationController

   def index
    @tops = Library.all
   end
end
