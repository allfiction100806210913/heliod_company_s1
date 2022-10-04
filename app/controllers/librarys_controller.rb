class LibrarysController < ApplicationController
  before_action :library_set, except: [:index, :new, :create]


 def index
  @librarys = Library.order("created_at DESC")
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
 end

 def edit
 end

 def update
  if @library.update(library_params)
    redirect_to library_path
  else
    render :edit
  end
 end

 private
 def library_params
  params.require(:library).permit(:card_name, :manacost, :card_text, :color, :power, :toughness, :image, :card_type).merge(user_id: current_user.id)
 end

 def library_set
  @library = Library.find(params[:id])
 end

end
