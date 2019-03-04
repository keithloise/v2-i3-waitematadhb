<% include HeroBanner %>
<div class="filter-wrapper">
    <div class="filter-container clearfix">
        <div id="resources_filter" class="unit size1of3 data-filter" style="overflow: hidden">
            <% if $Resources %>
                <label>FILTER BY</label>
                <button class="filter-btn" id="btn_res_filter"><span class="btn-text">Please Select</span><span class="btn-caret"><i class="fal fa-chevron-down"></i></span></button>
                <ul id="selector_res_filter" class="selector-filter active-selector" style="display: none">
                    <li><i class="fal fa-filter"></i><span>All</span></li>
                <% loop $Resources %>
                    <li><i class="$Icon"></i><span>$Title</span></li>
                <% end_loop %>
                </ul>
            <% end_if %>
        </div>
        <div id="moduletype_filter" class="unit size1of3 data-filter" style="overflow: hidden; display: none;">
            <% if $Resources %>
                <label>MODULE TYPE</label>
                <button class="filter-btn" id="btn_modtype_filter"><span class="btn-text">Please Select</span><span class="btn-caret"><i class="fal fa-chevron-down"></i></span></button>
                <% loop $Resources %>
                    <ul id="selector_modtype_filter" class="selector-filter" data-resources="$Title" style="display: none">
                        <li><i class="fal fa-filter"></i><span>All</span></li>
                        <% loop $ModuleType %>
                            <% if $SubModule.Count() < 1 %>
                             <li><% if $PageLink %><a href="{$PageLink.Link}"><% end_if %><i class="$Icon "></i><span>$Title</span><% if $PageLink %></a><% end_if %></li>
                            <% else %>
                             <li><i class="$Icon "></i><span>$Title</span></li>
                            <% end_if %>
                        <% end_loop %>
                    </ul>
                <% end_loop %>
            <% end_if %>
        </div>
        <!--
        <div id="submodule_filter" class="unit size1of3 data-filter" style="overflow: hidden; display: none;">
            <% if $Resources %>
                <label>SUB-MODULE</label>
                <button class="filter-btn" id="btn_submod_filter"><span class="btn-text">Please Select</span><span class="btn-caret"><i class="fal fa-chevron-down"></i></span></button>
                <% loop $Resources %>
                    <% loop $ModuleType %>
                        <ul id="selector_submod_filter" class="selector-filter" data-resources="$Up.Title" data-module="$Title" style="display: none">
                            <li><i class="fal fa-filter"></i><span>All</span></li>
                            <% loop $SubModule %>
                                <li><i class="$Icon"></i><span>$Title</span></li>
                            <% end_loop %>
                        </ul>
                    <% end_loop %>
                <% end_loop %>
            <% end_if %>
        </div>
        -->
    </div>
</div>

<div class="filtered_items-wrapper">
    <% loop $Resources %>
        <div class="filtered-items-container filtered-resources" data-resources="$Title">
            <div class="filtered-items">
                <h1>$Title</h1>
                <div class="filtered-items-box clearfix">
                    <% loop $ModuleType %>
                            <div class="unit size1of4" data-sub-count="$SubModule.Count()">
                                <div class="resources-content" data-resources="$Up.Title" <% if $SubModule.Count() > 0 %>id="module_type_clickable"<% end_if %>>
                                    <% if $SubModule.Count() < 1 && $LinkToPage %>
                                        <a href="{$PageLink.Link}">
                                    <% end_if %>
                                        <% if $PageLink.FeaturedImage %>
                                            <div class="image-container">
                                                <img class="block-image" src="$PageLink.FeaturedImage.URL">
                                            </div>
                                        <% else %>
                                            <% if $FeaturedImage %>
                                                <div class="image-container">
                                                    <img class="block-image" src="$FeaturedImage.URL">
                                                </div>
                                            <% else %>
                                                <div class="image-container">
                                                    <img class="block-image" src="mysite/images/doctor-563428_1920.jpg">
                                                </div>
                                            <% end_if %>
                                        <% end_if %>
                                    <% if $SubModule.Count() < 1 && $LinkToPage %>
                                        </a>
                                    <% end_if %>
                                    <% if $SubModule.Count() < 1 && $LinkToPage %>
                                        <a href="{$PageLink.Link}">
                                    <% end_if %>
                                        <h2>$Title</h2>
                                    <% if $SubModule.Count() < 1 && $LinkToPage %>
                                        </a>
                                    <% end_if %>
                                </div>
                            </div>
                    <% end_loop %>
                </div>
            </div>
        </div>
    <% end_loop %>
    <% loop $Resources %>
        <% loop $ModuleType %>
            <div class="filtered-items-container filtered-sub-items" data-resources="$Up.Title" data-module="$Title" style="display: none;">
                <div class="filtered-items">
                    <h1>$Title</h1>
                    <div class="filtered-items-box clearfix">
                        <% loop $SubModule %>
                            <div class="unit size1of4">
                                <div class="resources-content">
                                    <% if $ExternalLink %>
                                        <a href="$ExternalLink" target="_blank" rel="nofollow">
                                            <div class="image-container">
                                                <img class="block-image" src="mysite/images/doctor-563428_1920.jpg">
                                            </div>
                                        </a>
                                        <a href="$ExternalLink" target="_blank" rel="nofollow">
                                            <h2>$Title</h2>
                                        </a>
                                    <% else %>
                                        <% if $LinkToPage %>
                                            <% if $PageLink %>
                                            <a href="{$PageLink.Link}">
                                            <% end_if %>
                                        <% else %>
                                            <% if $File %>
                                            <a href="$File.URL" target="_blank">
                                            <% end_if %>
                                        <% end_if %>
                                        <% if $PageLink.FeaturedImage %>
                                            <div class="image-container">
                                                <img class="block-image" src="{$PageLink.FeaturedImage.URL}">
                                            </div>
                                        <% else %>
                                             <div class="image-container">
                                                <img class="block-image" src="mysite/images/doctor-563428_1920.jpg">
                                             </div>
                                        <% end_if %>
                                        <% if $LinkToPage %>
                                            <% if $PageLink %>
                                            </a>
                                            <% end_if %>
                                        <% else %>
                                            <% if $File %>
                                            </a>
                                            <% end_if %>
                                        <% end_if %>
                                        <% if $LinkToPage %>
                                            <% if $PageLink %>
                                            <a href="{$PageLink.Link}">
                                            <% end_if %>
                                        <% else %>
                                            <% if $File %>
                                            <a href="$File.URL" target="_blank">
                                            <% end_if %>
                                        <% end_if %>
                                        <h2>$Title</h2>
                                        <% if $LinkToPage %>
                                            <% if $PageLink %>
                                            </a>
                                            <% end_if %>
                                        <% else %>
                                            <% if $File %>
                                            </a>
                                            <% end_if %>
                                        <% end_if %>
                                    <% end_if %>
                                </div>
                            </div>
                        <% end_loop %>
                    </div>
                </div>
            </div>
        <% end_loop %>
    <% end_loop %>
</div>