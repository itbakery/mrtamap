class HomeController < ApplicationController
  layout 'welcome'
  def index
    @lines = Line.all.to_a
  end
end
