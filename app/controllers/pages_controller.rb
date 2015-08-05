class PagesController < ApplicationController

  def know
    @knows = DidYouKnow.all.order('id ASC')
  end
end
