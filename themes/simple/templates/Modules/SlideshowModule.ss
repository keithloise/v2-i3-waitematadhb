<% if $VisibleItems %>
    <div class="owl-carousel owl-{$ID}">
        <% loop $VisibleItems %>
            <div class="carousel-item">
                <img src="$BgImage.URL" class="slidershow-image" <% if $Up.SliderHeight%>style="height:{$Up.SliderHeight}px;" <% end_if %>>
                <% if $Title || $Content %>
                    <div class="overlay-text center">
                        <div class="overlay-content wow animated fadeInUp">
                            <% if $Title %>
                                <h1 class="<% if $Content %>margin-bot-sml <% end_if %>" style="<% if $SliderTextSize %>font-size: {$SliderTextSize}px;<% end_if %><% if $SliderTextColor %>color:#{$SliderTextColor}<% end_if %>">$Title</h1>
                            <% end_if %>
                            <% if $Content %>
                                $Content
                            <% end_if %>
                        </div>
                    </div>
                <% end_if %>
                <% if $ExternalLink %>
                    <a href="$ExternalLink" class="theme-btn wow animated fadeIn" style="visibility: hidden;">Learn More <i class="fas fa-chevron-right"></i></a>
                <% end_if %>
                <div class="scroll-down"><i class="wow animated fadeInDown slow infinite far fa-angle-down"></i></div>
            </div>
        <% end_loop %>
    </div>
    <script>
	    $('.owl-carousel.owl-{$ID}').owlCarousel({
	        items: 1,
	        smartSpeed: '600',
	        loop: true,
	        nav: true,
	        dots: true,
	        arrows: true,
	        margin: 0,
	        lazyLoad: true,
	        center: true
	    });
    </script>
<% end_if %>
