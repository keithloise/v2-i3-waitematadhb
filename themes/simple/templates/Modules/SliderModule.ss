<% if $VisibleItems %>
    <% if $ImageOverlay %>
       <style>
           .owl-slider-{$ID} .carousel-item:before {
                content: '';
                position: absolute;
                top: 0;
                height: 100%;
                width: 100%;
                background-image: linear-gradient(180deg, rgba(255, 255, 255, 0), rgba(0, 0, 0, 0.85) 80%);
           }
       </style>
    <% end_if %>
    <div class="owl-carousel owl-slider-{$ID}">
        <% loop $VisibleItems %>
            <% if $LinkToPage %>
                <a href="$PageLink.Link">
            <% else %>
                <% if $LightBoxImage %>
                    <a href="$SliderImg.URL" data-lightbox="slider-image" class="lightbox-btn">
                <% end_if %>
            <% end_if %>
            <div class="carousel-item <% if $Animate %>wow animated {$Animate} <% if $AnimateDelays %>{$AnimateDelays} <% end_if %><% if $AnimateSpeeds %>{$AnimateSpeeds}<% end_if %><% end_if %>">
                    <img src="$SliderImg.URL" class="slider-image" style="<% if $Up.ImageFit %>object-fit:{$Up.ImageFit};<% end_if %>">
                <div class="overlay-slider-text">
                    <h3>$PageLink.Title</h3>
                      <% if $PageLink.ContentSummary %>
                         <p>$PageLink.ContentSummary.LimitCharacters(150)</p>
                      <% else %>
                          <% if $PageLink.VisibleModules %>
                              <% loop $PageLink.VisibleModules.Limit(1) %>
                                  <% if $DisplayType == "Content Module" %>
                                      <p>$Content.LimitCharacters(150)</p>
                                  <% end_if %>
                              <% end_loop %>
                          <% else %>
                              <p>$Content</p>
                          <% end_if %>
                      <% end_if %>
                </div>
            </div>
            <% if $LinkToPage %>
                </a>
            <% else %>
                <% if $LightBoxImage %>
                    </a>
                <% end_if %>
            <% end_if %>
        <% end_loop %>
    </div>
    <script>
	    $('.owl-carousel.owl-slider-{$ID}').owlCarousel({
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
    </script>
<% end_if %>