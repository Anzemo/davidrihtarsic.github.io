(function($, window, document) {
    $(function(){

        // main sidebar
        $("#toggle-sidebar").click(function(e) {
            e.preventDefault();
            $("body").toggleClass("toggled");
        });

    });
}(window.jQuery, window, document)); 