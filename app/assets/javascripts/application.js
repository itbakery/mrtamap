// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require ckeditor/override
//= require ckeditor/init
//= require underscore
//= require gmaps/google
//
//= require flatty/jquery/jquery.min
//= require flatty/jquery/jquery.mobile.custom.min
//= require flatty/jquery/jquery-migrate.min
//= require flatty/jquery/jquery-ui.min
// require flatty/bootstrap/bootstrap.min
//= require flatty/plugins/plugins
//= require flatty/theme
//
// require dataTables/jquery.dataTables
// require dataTables/jquery.dataTables.bootstrap3
//= require_tree .

$(document).on('ready page:load', function () {

    $('#myTab a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
    })
});
