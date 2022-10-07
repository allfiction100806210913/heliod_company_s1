class LibrarysController < ApplicationController
  before_action :library_set, except: [:index, :new, :create]
  #before_action :random_number, only: [:index]

 def index
  @librarys = Library.order("created_at DESC")
  #@random = Library.find(random_number)
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

 def destroy
  if user_signed_in? && current_user.id == @library.user_id
   @library.destroy
   redirect_to root_path
  else
   redirect_to root_path
  end
 end

 private
 def library_params
  params.require(:library).permit(:card_type, :image, :numbers).merge(user_id: current_user.id)
 end

 def library_set
  @library = Library.find(params[:id])
 end

 #def random_number
  #random_number = Library.pluck(:id).shuffle[0..5]
 #end
end