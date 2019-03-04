<% include HeroBanner %>
<div class="inner" <% if $PageBackground %>style="background-image: url('{$PageBackground.URL}');"<% end_if %>>
    <div class="page-container" style="<% if $Width %>max-width:{$Width}px;margin: auto;<% end_if %><% if $PaddingTop %>padding-top: {$PaddingTop}px;<% end_if %><% if $PaddingBot %>padding-bottom: {$PaddingBot}px;<% end_if %><% if $PaddingRight %>padding-right: {$PaddingRight}px;<% end_if %><% if $PaddingLeft %>padding-left: {$PaddingLeft}px;<% end_if %>">
        <div class="project-list-wrapper">
            <div class="project-filter">
               <div class="filter-header-wrapper">
                 <div class="filter-header">
                   <label>FILTER BY</label>
                 </div>
                 <div class="filter-header">
                   <label>SHOW: <button class="show-items-btn"><span><span class="show-count">10</span> ITEMS <i class="fas fa-sort-down"></i></span></button></label>
                   <ul class="show-items-selector" style="display:none;">
                      <li>50</li>
                      <li>25</li>
                      <li>20</li>
                      <li>15</li>
                      <li>10</li>
                      <li>5</li>
                   </ul>
                 </div>
                 <div class="filter-header">
                   <label><button class="vertical-result-btn"><i class="fas fa-th-list"></i></button></label>
                 </div>
                  <div class="filter-header">
                   <label><button class="horizontal-result-btn" style="color: #ef7d00;"><i class="fas fa-th"></i></button></label>
                  </div>
                  <div class="filter-header">
                
                  </div>
               </div>
               <div class="filter-body-wrapper">
                   <div class="filter-body">
                      <% loop $Filter %>
                        <div class="filter-list">
                            <button class="filter-selector-btn">$Title</button>
                            <div class="filter-list-item">
                                <ul>
                                    <% loop $FilterList %>
                                      <li><span class="filter-name">$filter</span></li>
                                    <% end_loop %>
                                </ul>
                            </div>
                        </div>
                      <% end_loop %>
                      <div class="filter-list">
                           <button id="reset" class="view-all filter_btn">View All</button>
                           <button id="filter_project" class="filter-project filter_btn">Filter</button>
                      </div>
                   </div>
                   <div class="filter-body">
                       <div class="project-list">
                           <div class="clearfix">
                               <% loop $Children %>
                                    <div class="unit size1of3">
                                        <div class="project-list-item active-list" data-filters="<% loop $FilterItems %><% if $Last %>$Title<% else %>$Title,<% end_if %><% end_loop %>">
                                            <a href="$Link">
                                            </a>
                                            <% if $ProjectImg %>
                                                <img src="$ProjectImg.URL">
                                            <% end_if %>
                                            <div class="project_details">
                                                <h2 class="project_title">$Title.LimitCharacters(60)</h2>
                                                <% if $ContentSummary %>
                                                    <p>$ContentSummary.LimitCharacters(80)</p>
                                                <% else %>
                                                    <% loop $VisibleModules.Limit(1) %>
                                                        <% if $DisplayType == "Content Module" %>
                                                            <p>$Content.LimitCharacters(80)</p>
                                                        <% end_if %>
                                                    <% end_loop %>
                                                <% end_if %>
                                            </div>
                                        </div>
                                    </div>
                               <% end_loop %>
                           </div>
                       </div>
                   </div>
               </div>
            </div>
        </div>
    </div>
</div>