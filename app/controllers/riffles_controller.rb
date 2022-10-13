class RifflesController < ApplicationController
  before_action :riffle_shuffle, only: [:index]

  def index
   @riffle = Library.order("created_at DESC")
  end
  private

  def riffle_shuffle
    riffle = Library.order("created_at DESC")

    riffle_1 = riffle.last(rand(25..29))
    riffle_2 = riffle - riffle_1
    riffle_3 = riffle_1 + riffle_2
    riffle_3_1 = riffle_3[0,27].reverse
    riffle_3_2 = riffle_3[27,52].reverse
    riffle_4 = riffle_3_1.zip(riffle_3_2).flatten.compact
    riffle_4_1 = riffle_4[0,25].reverse
    riffle_4_2 = riffle_4[25,52].reverse
    @riffle_shuffle = riffle_4_1.zip(riffle_4_2).flatten.compact


  end

end
