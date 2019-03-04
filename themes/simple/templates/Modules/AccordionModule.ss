<% if $VisibleItems %>
    <div class="accordion-wrapper">
        <% loop $VisibleItems %>
            <button class="accordion-btn">$Title</button>
            <div class="panel">
                <div class="accordion-content">
                    $Content
                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>