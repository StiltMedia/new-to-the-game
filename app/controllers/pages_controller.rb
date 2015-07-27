class PagesController < ApplicationController

  def know
    @knows = DidYouKnow.all
  end
end
