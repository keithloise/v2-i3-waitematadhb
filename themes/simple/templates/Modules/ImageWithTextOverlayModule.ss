<% if $VisibleItems %>
    <div class="unit size1of1 clearfix">
    <% loop $VisibleItems %>
        <div class="unit <% if $Width %>$Width<% else %>size1of3<% end_if %> <% if $Animate %>wow animated $Animate <% if $AnimateDelay %>{$AnimateDelay} <% end_if %><% if $AnimateSpeed %>{$AnimateSpeed}<% end_if %><% end_if %>">
           <div class="block-container" id="block-$ID">
             
               <% if $BlockBgColor %>
                      <div class="block-image" style="background-color: #{$BlockBgColor};<% if $BlockImgHeight %>height:{$BlockImgHeight}px;<% end_if %>"></div>
               <% else %>
                   <% if $BlockBgImage %>
                       <img class="block-image" src="{$BlockBgImage.URL}" style="<% if $BlockImgHeight %>height:{$BlockImgHeight}px;<% end_if %>">
                   <% else %>
                       <img class="block-image" src="mysite/images/placeholder-image.png">
                   <% end_if %>
               <% end_if %>
               <% if $BgOverlayColor %>
                   <style>
                       #block-{$ID}.block-container .overlay-block {
                           background-color:$BgOverlayColor.CSSColor(0.3);
                       }
                   </style>
               <% end_if %>
               <% if $BgHoverColor %>
                   <style>
                        #block-{$ID}.block-container:hover .overlay-block {
                            background-color:$BgHoverColor.CSSColor(0.8);
                        }
                   </style>
               <% end_if %>

               <% if $Content %>
               <style>
                   #block-{$ID}.block-container:hover .overlay-block,
                   #block-{$ID}.block-container:hover .block-image{
                       -webkit-transform: translateX(-100%);
                       -ms-transform: translateX(-100%);
                       transform: translateX(-100%);
                   }
                   #block-{$ID}.block-container:hover .overlay-data {
                       opacity: 1;
                       z-index: 2;
                       -webkit-transform: translateX(0%);
                       -ms-transform: translateX(0%);
                       transform: translateX(0%);
                   }
               </style>
               <% end_if %>
               <% if $FileLink %>
                    <a href="$FileLink.URL">
               <% else %>
                    <% if $ExternalLink %>
                        <a href="$ExternalLink" rel="nofollow">
                    <% else %>
                        <% if $PageLink %>
                            <a href="$PageLink.Link" target="_blank">
                        <% end_if %>
                    <% end_if %>
               <% end_if %>
               <div class="overlay-block">
                   <h2 class="block-title" style="<% if $TitleSize %>font-size: {$TitleSize}px;<% end_if %><% if $BlurbBg %>background: #{$BlurbBg};<% end_if %><% if $TitleColor %>color:#$TitleColor;<% end_if %>">{$Title}</h2>
               </div>
               <% if $FileLink %>
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
               <% if $Content %>
                   <div class="overlay-data">
                       <div class="overlay-data-wrapper">
                           <div class="overlay-data-content">
                               $Content
                           </div>
                       </div>
                   </div>
               <% end_if %>
           </div>
        </div>
    <% end_loop %>
    </div>
<% end_if %>