$(document).ready(function(){
    // Only fire this on the home page.
    // Replace this with a regular click handler if you do not want a "splash"
    $(document).on('pages:home:loaded', function(){
        // Load the page content from "/users/new"
        var promise = $.get("/users/new");
        // When the ajax request has finished
        promise.success(function(data){
            var $frag = document.createDocumentFragment(), // Good for performance
                $modal = $($('#modal-template')[0].outerHTML, $frag),
                $form = $($(data).find('form')[0].outerHTML),
                $btn = $form.find('input[type="submit"]');
            // Wrap the modal content in the form.
            // Give the modal a unique ID.
            $modal.attr('id', 'register-modal');
            // Add the inputs from the form inside the body
            $modal.find('.modal-body').append($form);
            // Customize the title
            $modal.find('.modal-title').text('Sign Up!');
            // Add the submit button next to the close button
            $btn.addClass('btn btn-primary');
            // since the button is not actually in the form we add an event handler to submit the form.
            $btn.click(function(){
                $modal.find('form').submit();
            });
            $modal.find('.modal-footer').append($btn);
            // Attach the modal to document
            $('body').append($modal);
            // Open the modal
            $modal.modal({});
        });
        promise.fail(function(jqXHR, textStatus, errorThrown){
            console.error('Failed to fetch user registration form', textStatus, jqXHR, errorThrown);
        });
    });
});