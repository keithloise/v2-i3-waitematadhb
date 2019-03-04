<% if $VisibleItems %>
    <div class="image-or-text-wrapper unit size1of1 clearfix">
    <% loop $VisibleItems %>
        <div id="content-{$ID}" class="image-or-text<% if $Width %> unit $Width<% end_if %> ">
            <% if $Content %>
                <style>
                    <% if $ContentSize || $ContentColor %>
                        #content-{$ID} .block-content-wrapper p {
                            <% if $ContentSize %>
                                font-size: {$ContentSize}px;
                            <% end_if %>
                            <% if $ContentColor %>
                                color: #{$ContentColor};
                            <% end_if %>
                        }
                    <% end_if %>
                </style>
                <div class="block-content-wrapper" style="<% if $BlockBgColor %>Background-color:#{$BlockBgColor};<% end_if %>">
                    <% if $ShowHeader && $Title %>
                        <h2 style="<% if $HeadingSize %> font-size: {$HeadingSize}px;<% end_if %>">$Title</h2>
                    <% end_if %>
                    $Content
                </div>
            <% end_if %>
            <% if $Image %>
                <div class="block-image-wrapper" style="<% if $Padding(Top) > 0 %>padding-top:{$Padding(Top)}px;<% else %>padding-top:{$Padding(Top)}px;<% end_if %><% if $Padding(Bot) > 0 %>padding-bottom:{$Padding(Bot)}px;<% else %>padding-bottom:{$Padding(Top)}px;<% end_if %><% if $Padding(Left) > 0 %>padding-left:{$Padding(Left)}px;<% else %>padding-left:{$Padding(Left)}px;<% end_if %><% if $Padding(Right) > 0 %>padding-right:{$Padding(Right)}px;<% else %>padding-right:{$Padding(Right)}px;<% end_if %>">
                    <% if $LightBoxImage %>
                        <a href="$Image.URL" data-lightbox="slider-image">
                    <% else %>
                        <% if $ExternalLink %>
                            <a href="{$ExternalLink}" rel="nofollow" target="_blank">
                        <% else %>
                            <% if $PageLink %>
                                <a href="$PageLink.Link" target="_blank">
                            <% end_if %>
                        <% end_if %>
                    <% end_if %>
                        <img src="$Image.URL" class="block-image-src" <% if $ImageHeight %>style="height:{$ImageHeight}px;object-fit:contain;"<% end_if %>>
                    <% if $LightBoxImage %>
                        </a>
                    <% else %>
                        <% if $ExternalLink %>
                            </a>
                        <% else %>
                            <% if $PageLink %>
                                </a>
                            <% end_if %>
                        <% end_if %>
                    <% end_if %>
                </div>
            <% end_if %>
        </div>
    <% end_loop %>
    </div>
<% end_if %>