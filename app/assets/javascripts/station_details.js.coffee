# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# html() to fetch innercontent and display output on console.log

$(document).on 'ready page:load', ->
  phases = $('#station_detail_phase_id').html()
  stations = $('#station_detail_station_id').html()
  #console.log(phases)
  $('#station_detail_line_id').change ->
    line = $('#station_detail_line_id :selected').text()
    #console.log(line)
    options = $(phases).filter("optgroup[label='#{line}']").html()
    #console.log(options)
    if options
      $('#station_detail_phase_id').html(options)
      phase = $('#station_detail_phase_id :selected').text()
      options2 = $(stations).filter("optgroup[label='#{phase}']").html()
      $('#station_detail_station_id').html(options2)
    else
      $('#station_detail_phase_id').empty()
      $('#station_detail_station_id').empty()

  $('#station_detail_phase_id').change ->
      phase = $('#station_detail_phase_id :selected').text()
      options2 = $(stations).filter("optgroup[label='#{phase}']").html()
      if options2
        $('#station_detail_station_id').html(options2)
      else
        $('#station_detail_station_id').empty()

