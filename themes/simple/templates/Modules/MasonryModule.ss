<% if $VisibleItems %>
    <div class="unit size1of1 grid">
        <% loop $VisibleItems %>
            <div class="<% if $Width %>unit $Width<% end_if %> grid-item<% if $GridSizer %> <% end_if %><% if $Height %> $Height<% end_if %><% if $GridPadding %> masonry-grid-padding<% end_if %>" style="<% if $GridBgImage %>background-image:url('$GridBgImage.URL');background-size: cover;background-position: center;<% end_if %>">
                 <% if $Content %>
                     $Content
                 <% end_if %>
                 <% if $PageLink %>
                     <a href="$PageLink.Link">
                 <% end_if %>
                 <% if $Image %>
                     <img src="$Image.URL" class="masonry-grid-featured-image">
                 <% end_if %>
                 <% if $HoverTitle %>
                     <div class="overlay-data-wrapper">
                         <p>$Title</p>
                     </div>
                 <% end_if %>
                <% if $PageLink %>
                    </a>
                <% end_if %>
            </div>
        <% end_loop %>
    </div>
<% end_if %>