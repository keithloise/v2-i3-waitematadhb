<% include HeroBanner %>
<div class="inner" <% if $PageBackground %>style="background-image: url('{$PageBackground.URL}');"<% end_if %>>
    <div class="page-container" style="<% if $Width %>max-width:{$Width}px;margin: auto;<% end_if %><% if $PaddingTop %>padding-top: {$PaddingTop}px;<% end_if %><% if $PaddingBot %>padding-bottom: {$PaddingBot}px;<% end_if %><% if $PaddingRight %>padding-right: {$PaddingRight}px;<% end_if %><% if $PaddingLeft %>padding-left: {$PaddingLeft}px;<% end_if %>">
        <div class="blogpost-wrapper">
	        <div class="blogpost-row">
	            <div class="clearfix">
	                <div class="unit size1of1">
	                    <div class="blogpost-header">
	                        <h2 class="align-center">$Title</h2>
	                    </div>
	                    <div class="unit size1of2">
	                        <% if $FeaturedImage %>
		                        <div class="blogpost-image">
		                            <img src="$FeaturedImage.Link">
		                        </div>
	                        <% end_if %>
	                    </div>
	                    <div class="unit size1of2">
                            <div class="blogpost-content">
                                <% if $EventPostDate || $PublishDate || $EventLocation || $EventTimeStarted %>
                                    <div class="blogpost-details">
                                        <% if $EventPostDate %>
                                            <div class="blog-date">
                                                <span><i class="fas fa-calendar-alt"></i></span><span>$EventPostDate.Long</span>
                                            </div>
                                        <% else %>
                                            <div class="blog-date">
                                                <span><i class="fas fa-calendar-alt"></i></span><span>$PublishDate.Long</span>
                                            </div>
                                        <% end_if %>
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
                                <% end_if %>
                                <% if $Content %>
                                    $Content
                                <% end_if %>
                                <% if $DisableEntryMeta %>
                                <% else %>
                                    <% include EntryMeta %>
                                <% end_if %>
                            </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</div>