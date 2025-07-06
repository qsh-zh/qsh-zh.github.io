$(document).ready(function() {
    $('a.abstract').click(function() {
        $(this).parent().parent().find(".abstract.hidden").toggleClass('open');
    });
    $('a.bibtex').click(function() {
        $(this).parent().parent().find(".bibtex.hidden").toggleClass('open');
    });
    $('.navbar-nav').find('a').removeClass('waves-effect waves-light');
    
    // Expandable Details functionality
    $('.expandable-trigger').click(function(e) {
        e.preventDefault();
        $(this).closest('.expandable-details').toggleClass('expanded');
    });
    
    // Close expandable details when clicking outside
    $(document).click(function(e) {
        if (!$(e.target).closest('.expandable-details').length) {
            $('.expandable-details.expanded').removeClass('expanded');
        }
    });
    
    // Keyboard accessibility for expandable details
    $('.expandable-trigger').keydown(function(e) {
        if (e.key === 'Enter' || e.key === ' ') {
            e.preventDefault();
            $(this).closest('.expandable-details').toggleClass('expanded');
        }
    });
});
