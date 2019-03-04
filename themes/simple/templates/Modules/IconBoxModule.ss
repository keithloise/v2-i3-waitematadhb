<% if $VisibleItems %>
    <% loop $VisibleItems %>
        <% if $ContentSize || $ContentColor %>
            <style>
                #iconbox_{$ID} p,
                #iconbox_{$ID} ul li{
                <% if $ContentSize %>
                    font-size: {$ContentSize}px;
                <% end_if %>
                <% if $ContentColor %>
                    color:#{$ContentColor};
                <% end_if %>
                line-height: 120%;
                }
            </style>
        <% end_if %>
        <% if $ContHeaderSize || $ContHeaderColor %>
            <style>
                #iconbox_{$ID} h1,
                #iconbox_{$ID} h2,
                #iconbox_{$ID} h3{
                    <% if $ContHeaderSize %>
                        font-size: {$ContHeaderSize}px;
                    <% end_if %>
                    <% if $ContHeaderColor %>
                        color:#{$ContHeaderColor};
                    <% end_if %>
                }
                @media only screen and (max-width: 750px) {
                    #iconbox_{$ID} h1,
                    #iconbox_{$ID} h2,
                    #iconbox_{$ID} h3 {
                        font-size: 30px;
                    }
                }
            </style>
        <% end_if %>
        <div id="iconbox_{$ID}" class="iconbox__module <% if $BadgeIcon %>badge-margin <% end_if %><% if $Width %>unit $Width <% end_if %><% if $Animate %>wow animated $Animate <% if $AnimateDelay %>{$AnimateDelay} <% end_if %><% if $AnimateSpeed %>{$AnimateSpeed}<% end_if %><% end_if %>" >
            <% if $ExternalLink %>
                 <a href="{$ExternalLink}" rel="nofollow" target="_blank">
            <% else %>
                 <% if $PageLink %>
            		 <a href="$PageLink.Link" target="_blank">
            	 <% end_if %>
            <% end_if %>
            <% if $BadgeIcon %>
                <div class="badge-icon-container">
                    <div class="badge-icon"><i class="$BadgeIcon"></i></div>
                </div>
            <% end_if %>
            <div class="block-content" style="<% if $BlockBgColor && $BlockBgColor2 %>background-image: linear-gradient(to right, #{$BlockBgColor} , #{$BlockBgColor2});<% else %><% if $BlockBgColor %><background:#{$BlockBgColor};<% end_if %><% end_if %><% if $BlockPadding %>padding-top:{$BlockPadding}px;padding-bottom:{$BlockPadding}px;<% end_if %>">
                <% if $ShowHeader %><h2 class="block-content-title <% if $Alignment %>$Alignment <% end_if %>"><strong>$Title</strong></h2><% end_if %>
                <div class="block-content-text">
                	$Content
                </div>
            </div>
            <% if $ExternalLink %>
                 </a>
            <% else %>
             	<% if $PageLink %>
            	   </a>
            	<% end_if %>
            <% end_if %>
        </div>
    <% end_loop %>
<% end_if %>