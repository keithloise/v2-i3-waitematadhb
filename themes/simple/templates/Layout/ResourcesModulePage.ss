<% include HeroBanner %>
<div class="inner" <% if $PageBackground %>style="background-image: url('{$PageBackground.URL}');"<% end_if %>>
    <div class="page-container" style="<% if $Width %>max-width:{$Width}px;margin: auto;<% end_if %><% if $PaddingTop %>padding-top: {$PaddingTop}px;<% end_if %><% if $PaddingBot %>padding-bottom: {$PaddingBot}px;<% end_if %><% if $PaddingRight %>padding-right: {$PaddingRight}px;<% end_if %><% if $PaddingLeft %>padding-left: {$PaddingLeft}px;<% end_if %>">
		<div class="resources-module-wrapper">
		    <div class="resources-module clearfix">
		        <div class="resources-module-header">
		            <h2 class="align-center">$Title</h2>
		        </div>
		        <div class="clearfix">
		            <% if $FeaturedImage %>
		                <div class="unit size1of2">
		                    <div class="resources-module-img">
		                        <img src="$FeaturedImage.Url">
		                    </div>
		                </div>
		            <% end_if %>
		            <div class="unit <% if $FeaturedImage %>size1of2<% else %>size1of1<% end_if %>">
		                <div class="resources-module-content">
		                    $Content
		                    <% if $ModuleType || $ExperienceLevel %>
		                    <div class="resources-module-addons">
		                        <% if $ModuleType %>
		                            <h3>MODULE TYPE</h3>
		                            <% loop $ModuleType %>
		                                <a class="module-type"><span>$Title</span></a>
		                            <% end_loop %>
		                        <% end_if %>
		                        <% if $ExperienceLevel %>
		                            <h3>EXPERIENCE LEVEL</h3>
		                            <% loop $ExperienceLevel %>
		                                <a class="level-type"><span>$Title</span></a>
		                            <% end_loop %>
		                        <% end_if %>
		                    </div>
		                    <% end_if %>
		                </div>
		            </div>
		        </div>
		        <div class="downloadable-module-wrapper">
		            <% if $DownloadableModules %>
		            <div class="downloadable-module-container">
		                <div class="downloadable-module-header">
		                    <h2 class="align-center">Downloadable Resources</h2>
		                </div>
		                <div class="tabs">
		                    <div class="tab-buttons clearfix">
		                        <div class="unit size1of2 tab-button">
		                            <button class="open-tab active-tab" data-module="General Practice">General Practice</button>
		                        </div>
		                        <div class="unit size1of2 tab-button">
		                            <button class="open-tab" data-module="Pharmacy">Pharmacy</button>
		                        </div>
		                    </div>
		                    <div class="tab-item" data-item="General Practice" style="display: block;">
		                        <div class="filtered-items-container filtered-sub-items">
		                            <div class="filtered-items">
		                                <div class="filtered-items-box clearfix">
		                                    <% loop $DownloadableModules.Sort(Sort, ASC) %>
		                                        <% if $ModuleType == "General Practice" %>
		                                            <div class="unit size1of4">
		                                                <div class="resources-content">
		                                                    <% if $ExternalLink %>
		                                                        <a href="$ExternalLink" class="block-link" target="_blank" rel="nofollow">
		                                                            <% if $PageLink.FeaturedImage %>
		                                                                <div class="image-container">
		                                                                    <img class="block-image" src="$PageLink.FeaturedImage.URL">
		                                                                </div>
		                                                            <% else %>
		                                                                <% if $Image %>
		                                                                <div class="image-container">
		                                                                    <img class="block-image" src="$Image.URL">
		                                                                </div>
		                                                                <% else %>
		                                                                <div class="image-container">
		                                                                    <img class="block-image" src="mysite/images/doctor-563428_1920.jpg">
		                                                                </div>
		                                                                <% end_if %>
		                                                            <% end_if %>
		                                                        </a>
		                                                        <% if $Title %>
		                                                            <a href="$ExternalLink" target="_blank" rel="nofollow">
		                                                                $Title
		                                                            </a>
		                                                        <% end_if %>
		                                                    <% else %>
		                                                        <% if $File %>
		                                                            <a href="$File.Url" target="_blank" rel="nofollow">
		                                                        <% else %>
		                                                            <a href="{$PageLink.Link}">
		                                                        <% end_if %>
		                                                            <% if $PageLink.FeaturedImage %>
		                                                                <div class="image-container">
		                                                                    <img class="block-image" src="$PageLink.FeaturedImage.URL">
		                                                                </div>
		                                                            <% else %>
		                                                                <% if $Image %>
		                                                                    <div class="image-container">
		                                                                        <img class="block-image" src="$Image.URL">
		                                                                    </div>
		                                                                <% else %>
		                                                                    <div class="image-container">
		                                                                        <img class="block-image" src="mysite/images/doctor-563428_1920.jpg">
		                                                                    </div>
		                                                                <% end_if %>
		                                                            <% end_if %>
		                                                        <% if $File %>
		                                                            </a>
		                                                        <% else %>
		                                                            </a>
		                                                        <% end_if %>
		                                                        <% if $File %>
		                                                            <a href="$File.Url" target="_blank" rel="nofollow">
		                                                        <% else %>
		                                                            <a href="{$PageLink.Link}">
		                                                        <% end_if %>
		                                                        <% if $Title %>
		                                                            <h2>$Title</h2>
		                                                        <% else %>
		                                                            <h2>Add Title</h2>
		                                                        <% end_if %>
		                                                        <% if $File %>
		                                                            </a>
		                                                        <% else %>
		                                                            </a>
		                                                        <% end_if %>
		                                                    <% end_if %>
		                                                </div>
		                                            </div>
		                                        <% end_if %>
		                                    <% end_loop %>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="tab-item" data-item="Pharmacy" style="display: none">
		                        <div class="filtered-items-container filtered-sub-items">
		                            <div class="filtered-items">
		                                <div class="filtered-items-box clearfix">
		                                    <% loop $DownloadableModules.Sort(Sort, ASC) %>
		                                        <% if $ModuleType == "Pharmacy" %>
		                                            <div class="unit size1of4">
		                                                <div class="resources-content">
		                                                    <% if $ExternalLink %>
		                                                        <a href="$ExternalLink" target="_blank" rel="nofollow">
		                                                            <% if $PageLink.FeaturedImage %>
		                                                                <div class="image-container">
		                                                                    <img class="block-image" src="$PageLink.FeaturedImage.URL">
		                                                                </div>
		                                                            <% else %>
		                                                                <% if $Image %>
		                                                                    <div class="image-container">
		                                                                        <img class="block-image" src="$Image.URL">
		                                                                    </div>
		                                                                <% else %>
		                                                                    <div class="image-container">
		                                                                        <img class="block-image" src="mysite/images/doctor-563428_1920.jpg">
		                                                                    </div>
		                                                                <% end_if %>
		                                                            <% end_if %>
		                                                        </a>
		                                                        <% if $Title %>
		                                                            <a href="$ExternalLink" target="_blank" rel="nofollow">
		                                                                $Title
		                                                            </a>
		                                                        <% end_if %>
		                                                    <% else %>
		                                                        <% if $File %>
		                                                        <a href="$File.Url" target="_blank" rel="nofollow">
		                                                        <% else %>
		                                                        <a href="{$PageLink.Link}">
		                                                        <% end_if %>
		                                                        <% if $PageLink.FeaturedImage %>
		                                                            <div class="image-container">
		                                                                <img class="block-image" src="$PageLink.FeaturedImage.URL">
		                                                            </div>
		                                                        <% else %>
		                                                            <% if $Image %>
		                                                                <div class="image-container">
		                                                                    <img class="block-image" src="$Image.URL">
		                                                                </div>
		                                                            <% else %>
		                                                                <div class="image-container">
		                                                                    <img class="block-image" src="mysite/images/doctor-563428_1920.jpg">
		                                                                </div>
		                                                            <% end_if %>
		                                                        <% end_if %>
		                                                        <% if $File %>
		                                                        </a>
		                                                        <% else %>
		                                                        </a>
		                                                        <% end_if %>
		                                                        <% if $File %>
		                                                        <a href="$File.Url" target="_blank" rel="nofollow">
		                                                        <% else %>
		                                                        <a href="{$PageLink.Link}">
		                                                        <% end_if %>
		                                                        <% if $Title %>
		                                                            <h2>$Title</h2>
		                                                        <% else %>
		                                                            <h2>Add Title</h2>
		                                                        <% end_if %>
		                                                        <% if $File %>
		                                                        </a>
		                                                        <% else %>
		                                                        </a>
		                                                        <% end_if %>
		                                                    <% end_if %>
		                                                </div>
		                                            </div>
		                                        <% end_if %>
		                                    <% end_loop %>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <% end_if %>
		        </div>
		    </div>
		</div>
	</div>
</div>