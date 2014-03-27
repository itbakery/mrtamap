class MapsController < ApplicationController
  layout 'home'
  def index
    @lines = Line.all.to_a
  end
end
