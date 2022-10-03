class LibrarysController < ApplicationController
 def index
  @library = Library.all
 end

 def new
  @library = Library.new
 end

 def create
 end

end
