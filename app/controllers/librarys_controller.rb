class LibrarysController < ApplicationController
 def index
  @library = Library.all
 end
 
end
