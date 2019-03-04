<div class="unit size1of3 listings" data-date="<% if $EventPostDate %>{$EventPostDate.Month} {$EventPostDate.Year}<% else %>{$PublishDate.Month} {$PublishDate.Year}<% end_if %>" data-year="<% if $EventPostDate %>{$EventPostDate.Year}<% else %>{$PublishDate.Year}<% end_if %>" data-month="<% if $EventPostDate %>{$EventPostDate.Month}<% else %>{$PublishDate.Month}<% end_if %>">
    <div class="blog-box">
        <% if $Link %>
        <a href="$Link">
        <% end_if %>
        <% if $FeaturedImage %>
            <div class="img-blog-container">
                <img src="$FeaturedImage.URL" class="blog-img">
            </div>
        <% else %>
            <div class="blog-img">&nbsp;</div>
        <% end_if %>
        <% if $Link %>
        </a>
        <% end_if %>

        <% if $EventPostDate %>
            <div class="blog-date">
                <span>$EventPostDate.ShortMonth</span>
                <span>$EventPostDate.DayOfMonth</span>
            </div>
        <% else %>
            <div class="blog-date">
                <span>$PublishDate.ShortMonth</span>
                <span>$PublishDate.DayOfMonth</span>
            </div>
        <% end_if %>

        <div class="blog-text-box">
            <% if $Link %>
            <a href="$Link">
            <% end_if %>
            <h3>$Title</h3>
            <% if $Link %>
            </a>
            <% end_if %>
            <div class="location-time-container">
                <% if $EventLocation %>
                    <div class="blog-location">
                       <span class="span-container">
                            <i class="fas fa-map-marker-alt"></i> <span>$EventLocation</span>
                       </span>
                    </div>
                <% end_if %>
                <% if $EventTimeStarted %>
                    <div class="blog-time">
                       <span class="span-container">
                           <i class="fas fa-clock"></i><span>{$EventTimeStarted} - {$EventTimeFinished}</span>
                       </span>
                    </div>
                <% end_if %>
            </div>
            <div class="blog-content">
                <% loop $Categories %>
                    <% if $Title == "News" %>
                        <% if $Up.Content %>
                            <p>
                                $Up.Content.LimitCharacters(190)
                            </p>
                        <% end_if %>
                    <% end_if %>
                <% end_loop %>
                <% if $Link %>
                    <div class="align-center">
                        <a href="{$Link}" class="btn-light theme-btn btn-orange"><span>Read More</span></a>
                    </div>
                <% end_if %>
            </div>
        </div>
    </div>
</div>