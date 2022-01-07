// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery
//= require turbolinks
//= require semantic-ui

$(document).on('turbolinks:load',function(){
	$('#select').dropdown();
})
import "channels"
