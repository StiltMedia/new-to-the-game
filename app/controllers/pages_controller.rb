class PagesController < ApplicationController

  before_action :set_equalizer, only: [:index]

  def know
    @knows = DidYouKnow.all.order('id ASC')
  end

  def partners
    @supporters = Supporter.all.order('id ASC')
  end

  def index
    @equalizer = Equalizer.last
  end


private

  def set_equalizer
    0.times {@equalizer.facts.build}
  end

end
