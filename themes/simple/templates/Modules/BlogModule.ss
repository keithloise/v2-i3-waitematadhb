 <style>
   @media only screen and (min-width: 1450px) {
       <% if $SectionHeaderSize %>
           #$SectionID($Title) .side-header h1 {
               font-size: {$SectionHeaderSize}px;
           }
       <% end_if %>
       <% if $SectionSubHeaderSize %>
           #$SectionID($Title) .side-header h2,
           #$SectionID($Title) .side-header h3,
           #$SectionID($Title) .side-header h4,
           #$SectionID($Title) .side-header p {
               font-size: {$SectionSubHeaderSize}px;
           }
       <% end_if %>
   }
</style>
<% if $ContentPosition == "right" %>
    <% if $SectionHeader %>
        <div class="side-header unit display-desktop size1of3 margin-top<% if $HeaderAnimate %> wow animated $HeaderAnimate<% if $HeaderAnimateDelay %> {$HeaderAnimateDelay}<% end_if %><% if $HeaderAnimateSpeed %>  {$HeaderAnimateSpeed}<% end_if %><% end_if %>">
            $SectionHeader
        </div>
    <% end_if %>
<% else %>
    <% if $SectionHeader %>
        <div class="unit display-mobile size1of3 margin-top<% if $HeaderAnimate %> wow animated $HeaderAnimate<% if $HeaderAnimateDelay %> {$HeaderAnimateDelay}<% end_if %><% if $HeaderAnimateSpeed %>  {$HeaderAnimateSpeed}<% end_if %><% end_if %>">
            $SectionHeader
            <% if $PageLink %>
                <p class="right margin-default wow animated fadeInUp">
                    <a href="$PageLink.Link" class="theme-btn btn-orange"><span>$ButtonLabel <i class="fas fa-chevron-right"></i></span></a>
                </p>
            <% end_if %>
        </div>
    <% end_if %>
<% end_if %>
<% if $VisibleItems  %>
    <div class="unit {$Width} {$BlogStyle} clearfix">
        <% loop $VisibleItems %>
            <div class="unit unit-padding {$Width} <% if $Animate %>wow animated {$Animate} <% if $AnimateDelays %>{$AnimateDelays} <% end_if %><% if $AnimateSpeeds %>{$AnimateSpeeds}<% end_if %><% end_if %>">
                <div class="blog-container">
                    <% if $LinkPage %>
                    <a href="$PageLink.Link">
                    <% end_if %>
                        <img src="$PageLink.FeaturedImage.URL">
                    <% if $LinkPage %>
                    </a>
                    <% end_if %>
                    <% if $PageLink.OverlayPublishDate %>
                        <% if $PageLink.EventPostDate %>
                            <div class="overlay-date">
                                <div class="overlay-date-content">
                                    <span>$PageLink.EventPostDate.ShortMonth</span>
                                    <span>$PageLink.EventPostDate.DayOfMonth</span>
                                </div>
                            </div>
                        <% else %>
                            <div class="overlay-date">
                                <div class="overlay-date-content">
                                    <span>$PageLink.PublishDate.ShortMonth</span>
                                    <span>$PageLink.PublishDate.DayOfMonth</span>
                                </div>
                            </div>
                        <% end_if %>
                    <% end_if %>
                    <div class="blog-content">
                        <h3 class="blog-title color-orange">$Title</h3>
                        <% if $ShowContent %>
                            <div class="blog-post-content">
                                <p>
                                    $PageLink.Content.LimitCharacters(200)
                                </p>
                            </div>
                        <% end_if %>
                        <div class="blog-item-addinfo">
	                        <% if $PageLink.OverlayPublishDate == 0 %>
	                            <% if $PageLink.EventPostDate.long %>
	                                <p><i class="far fa-calendar-alt"></i><span>$PageLink.EventPostDate.long</span></p>
	                            <% end_if %>
	                        <% end_if %>
	                        <% if $PageLink.EventTimeStarted && $PageLink.EventTimeFinished %>
	                            <p><i class="fas fa-clock"></i><span>{$PageLink.EventTimeStarted} - {$PageLink.EventTimeFinished}</span></p>
	                        <% end_if %>
	                        <% if $PageLink.Credits %>
	                            <p>
	                            <% if $PageLink.Credits.Count() > 1 %>
	                               <i class="fas fa-users"></i>
	                            <% else %>
	                                <i class="fas fa-user"></i>
	                            <% end_if %>
	                             <span>
	                             <% loop $PageLink.Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %>& <% end_if %><% if $URLSegment %><a href="$URL">$Name.XML</a><% else %>$Name.XML<% end_if %><% end_loop %>
	                             </span>
	                            </p>
	                        <% end_if %>
	                        <% if $PageLink.EventLocation %>
	                            <p class="blog-location"><i class="fas fa-map-marker-alt"></i><span>$PageLink.EventLocation</span></p>
	                        <% end_if %>
	                        <% if $LinkPage %>
	                            <p class="blog-navlink align-center"><a class="btn-light align-center margin-top-sml" href="$PageLink.Link">Read More</a></p>
	                        <% end_if %>
                        </div>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
<% if $ContentPosition == "left" %>
    <% if $SectionHeader %>
        <div class="side-header unit display-desktop size1of3 margin-top<% if $HeaderAnimate %> wow animated $HeaderAnimate<% if $HeaderAnimateDelay %> {$HeaderAnimateDelay}<% end_if %><% if $HeaderAnimateSpeed %>  {$HeaderAnimateSpeed}<% end_if %><% end_if %>">
            $SectionHeader
            <% if $PageLink %>
                <p class="right margin-default wow animated fadeInUp">
                    <a href="$PageLink.Link" class="theme-btn btn-orange"><span>$ButtonLabel <i class="fas fa-chevron-right"></i></span></a>
                </p>
            <% end_if %>
        </div>
    <% end_if %>
<% end_if %>