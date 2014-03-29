class MapsController < ApplicationController
  layout 'welcome'
  def index
    @station_details = StationDetail.all
    @hash = Gmaps4rails.build_markers(@station_details) do |station, marker|
      marker.lat station.latitude
      marker.lng station.longitude
      marker.infowindow render_to_string(:partial => "mapmodal", :locals => { :station => station})
    end


  end
end
