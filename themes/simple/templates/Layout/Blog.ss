<% include HeroBanner %>
<div class="inner" <% if $PageBackground %>style="background-image: url('{$PageBackground.URL}');"<% end_if %>>
    <div class="page-container" style="<% if $Width %>max-width:{$Width}px;margin: auto;<% end_if %><% if $PaddingTop %>padding-top: {$PaddingTop}px;<% end_if %><% if $PaddingBot %>padding-bottom: {$PaddingBot}px;<% end_if %><% if $PaddingRight %>padding-right: {$PaddingRight}px;<% end_if %><% if $PaddingLeft %>padding-left: {$PaddingLeft}px;<% end_if %>">
        <div class="blog-wrapper">
            <div class="unit size1of1 clearfix">
	            <div id="filter_year" class="filters unit size1of3">
	                <div class="filter-label"><span>BROWSE BY YEAR:</span></div>
	                <div class="filter-tag">
	                    <button class="filter-selector"><span class="btn-text">All</span><span class="btn-caret"><i class="fal fa-chevron-down"></i></span></button>
	                    <ul class="filters-list" style="display:none;"></ul>
	                </div>
	            </div>
	            <div id="filter_month" class="filters unit size1of3" style="display:none;">
	                <div class="filter-label"><span>BROWSE BY MONTH:</span></div>
	                <div class="filter-tag">
	                    <button class="filter-selector"><span class="btn-text">All</span><span class="btn-caret"><i class="fal fa-chevron-down"></i></span></button>
	                    <ul class="filters-list" style="display:none;"></ul>
	                </div>
	            </div>
            </div>
            <div class="Page-Blog Blog">
                <div class="unit size1of1 clearfix">
                    <% require themedCSS('blog', 'blog') %>
                    <div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">
                        <% if $PaginatedList.Exists %>
                            <% loop $PaginatedList %>
                                <% include PostSummary %>
                            <% end_loop %>
                        <% else %>
                            <p><%t Blog.NoPosts 'There are no posts' %></p>
                        <% end_if %>
                        $Form
                        $CommentsForm
                    </div>
                    <% include BlogSideBar %>
                </div>
            </div>
        </div>
    </div>
</div>
