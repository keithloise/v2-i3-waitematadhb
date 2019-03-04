<% include HeroBanner %>
<div class="inner" <% if $PageBackground %>style="background-image: url('{$PageBackground.URL}');"<% end_if %>>
    <div class="page-container" style="<% if $Width %>max-width:{$Width}px;margin: auto;<% end_if %><% if $PaddingTop %>padding-top: {$PaddingTop}px;<% end_if %><% if $PaddingBot %>padding-bottom: {$PaddingBot}px;<% end_if %><% if $PaddingRight %>padding-right: {$PaddingRight}px;<% end_if %><% if $PaddingLeft %>padding-left: {$PaddingLeft}px;<% end_if %>">
        <div class="events-wrapper">
            <div class="filters">
                <div class="filter-label"><span>BROWSE BY MONTH:</span></div>
                <div class="filter-tag">
                    <ul>
                        <% loop $Tags %>
                        <% end_loop %>
                        <% loop $AllEvents %>
                            <% loop $Categories %>
                                <% if $Title == "Events" %>

                                <% end_if %>
                            <% end_loop %>
                            <% loop $Tags %>
                                <li><span>$Title</span></li>
                            <% end_loop %>
                        <% end_loop %>
                    </ul>
                </div>
            </div>
            <% loop $AllEvents %>
                <% loop $Categories %>
                    <% if $Title == "Events" %>
                       <div class="unit size1of2">
                           <div class="events-box">
                               <img src="$Up.FeaturedImage.URL" class="event-img">
                               <div class="events-text-box">
                                   <h3>$Up.Title</h3>
                                   <% if $Up.EventLocation %>
                                       <div class="event-location">
                                           <span class="span-container">
                                                <i class="fas fa-map-marker-alt"></i> <span>$Up.EventLocation</span>
                                           </span>
                                       </div>
                                   <% end_if %>
                                   <% if $Up.PublishDate %>
                                       <div class="event-date">
                                           <span class="span-container">
                                                <i class="fas fa-calendar-alt"></i> <span>$Up.PublishDate.Long</span>
                                           </span>
                                       </div>
                                   <% end_if %>
                                   <% if $Up.EventTimeStarted %>
                                       <div class="event-time">
                                           <span class="span-container">
                                               <i class="fas fa-clock"></i><span>{$Up.EventTimeStarted} - {$Up.EventTimeFinished}</span>
                                           </span>
                                       </div>
                                   <% end_if %>
                               </div>
                               <% if $Up.Content %>
                                $Up.Content
                               <% end_if %>
                           </div>
                       </div>
                    <% end_if %>
                <% end_loop %>
            <% end_loop %>
        </div>
    </div>
</div>