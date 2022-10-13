class FarrowController < ApplicationController
    before_action :farrow_shuffle, only: [:index]
  
    def index
     @farrow = Library.order("created_at DESC")
    end

    private
  
    def farrow_shuffle
      farrow = Library.order("created_at DESC")
  
      farrow_1 = farrow.last(rand(25..29))
      farrow_2 = farrow - farrow_1
      farrow_3 = farrow_1 + farrow_2
      farrow_3_1 = riffle_3[0,27].reverse
      farrow_3_2 = riffle_3[rand(20..27),rand(27..)].reverse
      farrow_4 = riffle_3_1.zip(riffle_3_2).flatten.compact




  
  
    end
  

end
