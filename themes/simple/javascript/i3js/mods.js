$(document).ready(function() {
    $('.owl-carousel.owl-1').owlCarousel({
        items: 1,
        smartSpeed: '600',
        loop: true,
        nav: true,
        dots: false,
        margin: 0,
        lazyLoad:true,
        center:true,
        autoHeight: true
    });

    $('.owl-carousel.owl-2').owlCarousel({
        items: 1,
        smartSpeed: '600',
        loop: true,
        nav: true,
        dots: false,
        margin:20,
        stagePadding: 10,
        lazyLoad:true,
        autoHeight: true,
        responsive : {
            // breakpoint from 768 up
            750: {
              items: 2
            },
            1350 : {
                items: 3
            }
        }

    });

    var section = $( "#IntroSection");
    var offset = section.offset();
    section.width();

    offset = offset.top;

    $(window).scroll(function () {
        var scrollheight = $(window).scrollTop();
        if (scrollheight   >  (offset/2) ) {
            section.addClass('scrolled');
        } else {
            section.removeClass('scrolled');
        }
        if(scrollheight >= 400) {
            $('header').addClass('header-scrolled');
        } else {
            $('header').removeClass('header-scrolled');
        }
    });

    var wow = new WOW(
        {
            offset: 500,    // distance to the element when triggering the animation (default is 0)
            mobile: false,  // trigger animations on mobile devices (default is true)
            live: true,     // act on asynchronously loaded content (default is true)
            callback: function(box) {
                // the callback is fired every time an animation is started
                // the argument that is passed in is the DOM node being animated
            },
            scrollContainer: null // optional scroll container selector, otherwise use window
        }
    );
    wow.init();

    $('.filter-selector').click(function() {
        var filter_list = $('.filters-list');
        if(filter_list.hasClass('open-filter')){
            filter_list.removeClass('open-filter');
        }else{
            filter_list.addClass('open-filter');
        }
    });
    $('.filters-list li').each(function () {
       $(this).click(function () {
           var filter_value = $(this).data('value');
           $('.filter-selector span').text(filter_value);
           $(this).parent('.filters-list').removeClass('open-filter');
           if(filter_value == "All") {
               $('.listings').each(function () {
                   $(this).fadeIn('fast');
               });
           }else {
               $('.listings').each(function () {
                   $(this).fadeOut('fast');
                   var listing_date = $(this).data('date');
                   if(listing_date == filter_value) {
                       $(this).fadeIn('fast');
                   }
               });
           }
       });
    });


    var t, ctr = 0;
    $('.profile-container').on("mouseenter", function () {

        var image_container = $(this).find('img.profile-image');
        var image_1 = image_container.data("image");
        var image_2 = image_container.data("image2");
        var image_3 = image_container.data("image3");

        t = setInterval(function(){
            ctr = ctr + 1;

            if(ctr == 1) {
                image_container.attr("src",image_2);
            }else if(ctr == 2) {
                image_container.attr("src",image_3);
            }else {
                image_container.attr("src",image_1);
            }
            if (ctr > 3) {
                ctr = 0;
            }

        }, 650);

    }).on("mouseleave", function() {
        var profile_image_container  = $(this).find('img.profile-image');
        var profile_image1 = profile_image_container.data("image");
        profile_image_container.attr("src",profile_image1)
        clearInterval(t);
    });

    /*
    $('.profile-container').each(function () {
        var t, t2, t3;
        $(this).on("mouseenter", function() {
            var profile_image_container  = $(this).find('img.profile-image');
            var profile_image1 = profile_image_container.data("image");
            var profile_image2 = profile_image_container.data("image2");
            var profile_image3 = profile_image_container.data("image3");

           t = setInterval(function(){
                    profile_image_container.attr("src",profile_image2);
                }, 600);
           t2 =  setInterval(function(){
                    profile_image_container.attr("src",profile_image3);

                }, 1200);
           t3 =  setInterval(function(){
                    profile_image_container.attr("src",profile_image1);
                }, 1800);

        }).on("mouseleave", function() {
            var profile_image_container  = $(this).find('img.profile-image');
            var profile_image1 = profile_image_container.data("image");
            profile_image_container.attr("src",profile_image1)
            clearInterval(t);
            clearInterval(t2);
            clearInterval(t3);
        });
    });
    */
});
