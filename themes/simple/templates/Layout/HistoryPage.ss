<% include HeroBanner %>
<div class="inner" <% if $PageBackground %>style="background-image: url('{$PageBackground.URL}');"<% end_if %>>
    <div class="page-container" style="<% if $Width %>max-width:{$Width}px;margin: auto;<% end_if %><% if $PaddingTop %>padding-top: {$PaddingTop}px;<% end_if %><% if $PaddingBot %>padding-bottom: {$PaddingBot}px;<% end_if %><% if $PaddingRight %>padding-right: {$PaddingRight}px;<% end_if %><% if $PaddingLeft %>padding-left: {$PaddingLeft}px;<% end_if %>">
        <div class="history-wrapper">
            <div class="explore-nav-wrapper">
                <div class="explore-nav">
                    <p>EXPLORE</p>
                    <% loop $HistoryItem %>
                        <% if $BtnNav %>
                            <% if $Content %>
                                <div class="year-circle<% if $Title == "2012" %> active<% end_if %>">$Title</div>
                                <a href="#{$Title}" data-value="$Title" id="{$Title}_btn" class="explore-year<% if $Title == "2012" %> explore-year-active<% end_if %>"><% if $Title == "2012" %><i class="fas fa-dot-circle"></i><% else %><i class="fas fa-circle"></i><% end_if %></a>

                            <% end_if %>
                        <% end_if %>
                    <% end_loop %>
                </div>
            </div>
            <div class="clearfix">
                <% loop $HistoryItem %>
                    <div class="unit<% if $Width %> $Width<% end_if %> timeline-block">
                        <% if $BtnNav %>
                            <div class="year-timeline">
                                <% if $Content %>
                                    <div class="year-timeline-text" id="$Title" data-value="$Title">
                                        $Content
                                    </div>
                                <% end_if %>
                                <button class="toggle-btn">
                                    <i class="fas fa-dot-circle"></i>
                                </button>
                            </div>
                        <% else %>
                            $Content
                        <% end_if %>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </div>
</div>