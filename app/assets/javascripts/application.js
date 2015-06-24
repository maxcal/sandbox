// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(function(){
    var $label_holder = $('#post_labels'),
        $post_body = $('#post_body'),
        tag = /--(.+?)--/g,
        delimiter = /--/g;

    // When the label inputs change
    // Update the body
    $label_holder.on('change keyup', 'input', function(){
        var new_label = '--' + $(this).val() + '--';
        var text = $post_body.val();
        var old_label = text.match(tag)[$(this).index()];
        $post_body.val(text.replace(old_label, new_label));
    });

    // When the body changes
    // Update the label inputs
    $post_body.on('change, keyup', function(){
        var labels = $post_body.val().match(tag);
        labels = $.map(labels, function(str){ return str.replace(delimiter, '') });
        $label_holder.empty();
        // This creates an input for each label
        $(labels).each(function(i, val){
            var input = document.createElement('input');
            input.name = 'labels[' + i + ']';
            input.value = val;
            $label_holder.append(input);
        });
    }).trigger('change');
});

