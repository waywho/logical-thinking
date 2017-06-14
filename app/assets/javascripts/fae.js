// This file is compiled into fae/application.js
// use this as another manifest file if you have a lot of javascript to add
// or just add your javascript directly to this file
//= require trumbowyg/trumbowyg

var getUrl = window.location;
var baseUrl = getUrl .protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[0];

$.trumbowyg.svgPath = baseUrl + 'assets/icons.svg';

$(document).ready(function() {
    $('.js-html-editor').trumbowyg();
})