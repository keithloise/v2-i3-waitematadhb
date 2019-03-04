<div class="page-hero-banner">
    <div class="heroBanner-IE" style="background-image: url('mysite/images/defaultbanner.jpg');display: none;"></div>
    <img class="heroBanner-AnyBrowser" src="mysite/images/defaultbanner.jpg" style="display: none;">
    <div class="page-content-overlay">
        <% if $HeaderContent %>
            <div class="content-overlay-wrapper">
                <div class="content-overlay<% if $HeaderContentBox %><% if $HeaderBoxAlign %> $HeaderBoxAlign<% end_if %><% end_if %>">
                    <% if $HeaderContentBox %>
                        <div class="header-content-box" style="<% if $HeaderBoxColor %>background-color:#{$HeaderBoxColor};<% end_if %>">
                            <% if $HeaderColor %>
                                <style>
                                    .header-content-box p,
                                    .header-content-box h1,
                                    .header-content-box h2,
                                    .header-content-box h3,
                                    .header-content-box h4,
                                    .header-content-box h5,
                                    .header-content-box h6 {
                                        color: #{$HeaderColor};
                                    }
                                </style>
                            <% end_if %>
                            $HeaderContent
                        </div>
                    <% else %>
                        $HeaderContent
                    <% end_if %>
                </div>
            </div>
        <% end_if %>
        <% if $NoScrollArrow %>
        <% else %>
            <div class="scroll-down"><i class="wow animated fadeInDown slow infinite far fa-angle-down"></i></div>
        <% end_if %>
    </div>
</div>