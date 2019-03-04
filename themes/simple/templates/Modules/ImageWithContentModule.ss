<% if $VisibleItems %>
    <div class="unit size1of1 clearfix">
    <% loop $VisibleItems %>
           <div id="content-{$ID}" class="unit table-unit <% if $Width %>$Width<% else %>size1of2<% end_if %> <% if $Animate %>wow animated $Animate <% if $AnimateDelay %>{$AnimateDelay} <% end_if %><% if $AnimateSpeed %>{$AnimateSpeed}<% end_if %><% end_if %>">
               <style>
               <% if $BgContentColor %>
               	 #content-$ID .content-wrapper {
	               	 background-color:#{$BgContentColor};
               	 }
               <% end_if %>
                 <% if $BgContentHoverColor %>
                   #content-$ID:hover .content-wrapper {
                       background-color:#{$BgContentHoverColor};
           }
           #content-$ID:hover .image-wrapper:before {
               background-color: $BgContentHoverColor.CSSColor(0.3);
           }
         <% end_if %>
       </style>
       <% if $ContentPosition == "right" %>
           <style>
               #content-$ID:hover .image-wrapper .fa-caret-left {
                   color: #{$BgContentHoverColor};
                   right: -5px;
                   opacity: 1;
               }
               #content-$ID .image-wrapper .fa-caret-left {
                   right: -20px;
               }
           </style>
           <% if $ItemImage %>
               <div class="unit size1of2 table-cell-unit image-wrapper">
                    <img src="$ItemImage.URL">
                    <i class="fas fa-caret-left"></i>
                </div>
           <% else %>
               <% if $PageLink.FeaturedImage %>
                   <div class="unit size1of2 table-cell-unit image-wrapper">
                       <img src="$PageLink.FeaturedImage.URL">
                       <i class="fas fa-caret-left"></i>
                   </div>
               <% end_if %>
           <% end_if %>
           <% if $Content %>
               <div class="unit size1of2 table-cell-unit content-wrapper">
                     <% if $Title %>
                        <h3>$Title</h3>
                     <% end_if %>
                     <p>$Content.LimitCharacters(120)</p>
                     <% if $LinkPage %>
                        <p><a class="light-btn bold-text" href="$PageLink.Link">READ MORE</a></p>
                     <% end_if %>
               </div>
           <% else %>
               <% if $PageLink.Content %> 
                   <div class="unit size1of2 table-cell-unit content-wrapper">
                        <% if $Title %>
                           <h3>$Title</h3>
                        <% end_if %>
                        <% if $PageLink.PublishDate %>
                           <p><strong><i class="fas fa-calendar-alt"></i> $PageLink.PublishDate.Full</strong></p>
                        <% end_if %>
                        <p>$PageLink.Content.LimitCharacters(120)</p>
                        <% if $LinkPage %>
                            <p><a class="light-btn bold-text" href="$PageLink.Link">READ MORE</a></p>
                        <% end_if %>
                   </div>
               <% end_if %>
           <% end_if %>
                   
         <% else %>
                    
           <% if $Content %>
               <div class="unit size1of2 table-cell-unit content-wrapper">
                     <% if $Title %>
                        <h3>$Title</h3>
                     <% end_if %>
                     <p>$Content</p>
                     <% if $LinkPage %>
                        <p><a class="light-btn bold-text" href="$PageLink.Link">READ MORE</a></p>
                     <% end_if %>
               </div>
           <% else %>
               <% if $PageLink.Content %> 
                   <div class="unit size1of2 table-cell-unit content-wrapper">
                        <% if $Title %>
                           <h3>$Title</h3>
                        <% end_if %>
                        <% if $PageLink.PublishDate %>
                           <p><strong><i class="fas fa-calendar-alt"></i> $PageLink.PublishDate.Full</strong></p>
                        <% end_if %>
                        <p>$PageLink.Content.LimitCharacters(120)</p>
                        <% if $LinkPage %>
                            <p><a class="light-btn bold-text" href="$PageLink.Link">READ MORE</a></p>
                        <% end_if %>
                   </div>
               <% end_if %>
            <% end_if %>
            <style>
               #content-$ID:hover .image-wrapper .fa-caret-right {
                   color: #{$BgContentHoverColor};
                   left: -5px;
                   opacity: 1;
               }
               #content-$ID .image-wrapper .fa-caret-right {
                   left: -20px;
               }
            </style>
            <% if $ItemImage %>
               <div class="unit size1of2 table-cell-unit image-wrapper">
                    <img src="$ItemImage.URL">
                    <i class="fas fa-caret-right"></i>
                </div>
            <% else %>
               <% if $PageLink.FeaturedImage %>
                   <div class="unit size1of2 table-cell-unit image-wrapper">
                       <img src="$PageLink.FeaturedImage.URL">
                       <i class="fas fa-caret-right"></i>
                           </div>
                       <% end_if %>
                    <% end_if %>
                 <% end_if %>
           </div>
    <% end_loop %>
    </div>
<% end_if %>