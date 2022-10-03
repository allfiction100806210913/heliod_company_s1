class LibrarysController < ApplicationController
 def index
  @library = Library.all
 end

 def new
  @library = Library.new
 end

 def create
  binding.pry
  @library = Library.new(library_params)
  if @library.save
    redirect_to root_path
  else
    render :new
  end
 end

 def library_params
  params.require(:library).permit(:card_name, :manacost, :card_text, :color, :power, :toughness, :image).merge(user_id: current_user.id)
 end

end
