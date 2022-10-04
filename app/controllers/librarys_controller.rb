class LibrarysController < ApplicationController
 def index
  @librarys = Library.all
 end

 def new
  @library = Library.new
 end

 def create
  @library = Library.new(library_params)
  if @library.save
    redirect_to root_path
  else
    render :new
  end
 end
 
 def show
  @library = Library.find(params[:id])
 end

 private
 def library_params
  params.require(:library).permit(:card_name, :manacost, :card_text, :color, :power, :toughness, :image, :card_type).merge(user_id: current_user.id)
 end

end
