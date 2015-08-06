class PagesController < ApplicationController

  def know
    @knows = DidYouKnow.all.order('id ASC')
  end

  def partners
    @supporters = Supporter.all.order('id ASC')
  end
end
