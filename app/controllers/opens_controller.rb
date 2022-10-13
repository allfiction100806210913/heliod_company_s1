class OpensController < ApplicationController

  def index
    @open = Library.all
  end

end
