<% if $EnablePromsHeader %>
    <div class="proms-header-container">
        <div class="proms-header-wrapper">
            <% if $SiteConfig.PromsLogo %>
                <a href="/proms">
                    <img src="$SiteConfig.PromsLogo.URL" class="proms-logo">
                </a>
            <% end_if %>
            <div class="progress-bar-container">
                <div class="progress-bar-wrapper"><span>The Online Checklist</span><span class="progress-bar<% if $ProgressBar %> $ProgressBar<% end_if %>"></span></div>
                <button class="save_session<% if $PageSession != "" && $PageSession != "login_session" && $PageSession != "complete_session" %> active<% end_if %>"><i class="fal fa-save"></i></button>

                <div class="session_infobox<% if $PageSession == "proms_champ_session" %> active<% end_if %>">
                    <i class="fal fa-save"></i>
                    <p>Save your progress and come back to it later by clicking this button.</p>
                    <button><i class="fal fa-times"></i></button>
                </div>
            </div>
        </div>
    </div>
<% else %>
    <% if $SiteConfig.HeaderStyles == "i3" %>
<div class="nav-container">
    <div class="nav-wrapper">
        <nav class="primary">
            <div class="unit size1of1 clearfix">
                <div class="unit size1of2 $LinkingMode<% if $Children %> hasChildren<% end_if %>">
                    <% loop $Menu(1) %>
                        <div class="menu-section">
                            <% if $Children %>
                                <div class="ChildrenMenu">
                                    <a href="$Link" title="$Title.XML" >$MenuTitle.XML</a>

                                </div>
                            <% end_if %>
                        </div>
                    <% end_loop %>
                </div>
                <div class="unit size1of2">
                    <div class="">

                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>
<header class="header <% if $SiteConfig.HeaderPosition %>stick-header<% end_if %>" role="banner" <% if $SiteConfig.HeaderPosition %><% else %> style="background-color:#$SiteConfig.HeaderBgColor" <% end_if %>>
    <div class="inner">
        <div class="unit size4of4 lastUnit">
            <div class="header-divider">
                <div class="unit size1of4">
                    <a class="open-close-button">
						<span class="mobile-menu-btn">
							<span class="line-nav one"></span>
							<span class="line-nav two"></span>
							<span class="line-nav three"></span>
						</span>
                        <span class="text">
							MENU
						</span>
                    </a>
                </div>
                <div class="unit size1of2 center">
                    <a href="$BaseHref" class="brand center" rel="home">
						<% if $SiteConfig.Logo %>
                            <img class="logo-img display-desktop" src="$SiteConfig.Logo.URL" style="max-width:$LogoWidthFix">
                            <img class="logo-img logo-mobile display-mobile" src="$SiteConfig.MobileLogo.URL">
						<% else %>
                            <h1>$SiteConfig.Title</h1>
							<% if $SiteConfig.Tagline %>
                                <p>$SiteConfig.Tagline</p>
							<% end_if %>
						<% end_if %>
                    </a>
                </div>
                <div class="unit size1of4">
                     <div class="search-col">
                         <!--
                         <a href="#" class="socials-nav">
                             <i class="fal fa-globe-asia"></i>
                         </a>
                         -->
                         <a class="search-btn">
                             <i class="fal fa-search"></i>
                         </a>
                      </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="search-box">
    <% if $SearchForm %>
        <div class="search-bar">
            <p class="search-label">What are you looking for?</p>
            $SearchForm
        </div>
    <% end_if %>
</div>
<% else_if $SiteConfig.HeaderStyles == "SIP" %>
    <% if $SiteConfig.PreheaderText %>
        <div class="pre-header align-center">
            <p>$SiteConfig.PreheaderText</p>
        </div>
    <% end_if %>
    <header class="header" role="banner">
        <div class="inner">
            <div class="header-unit">
                <a href="$BaseHref" class="brand" rel="home">
                    <% if $SiteConfig.Logo %>
                        <img class="logo-img" src="$SiteConfig.Logo.URL" style="max-width:$LogoWidthFix">
                    <% else %>
                        <h1>$SiteConfig.Title</h1>
                        <% if $SiteConfig.Tagline %>
                            <p>$SiteConfig.Tagline</p>
                        <% end_if %>
                    <% end_if %>
                </a>
                <div class="nav-bar">
                   <% if $SiteConfig.Navigations %>
                       <% loop $SiteConfig.Navigations %>
                           <% if $Title == "Quick Menu" %>
                               <div class="quick-nav ">
                                   <ul>
                                       <% loop $Menu %>
                                           <li><a <% if $ExternalLink %>href="$ExternalLink" <% else %>href="$PageLink.Link<% end_if %>>$Title</a></li>
                                       <% end_loop %>
                                       <li>
	                                    <form id="SearchForm_SearchForm" action="/latest-news/SearchForm" method="get" enctype="application/x-www-form-urlencoded">
											<p id="SearchForm_SearchForm_error" class="message " style="display: none"></p>
											<input type="text" name="Search" class="search-text" id="SearchForm_SearchForm_Search">
											<button type="submit" class="search-btn" id="SearchForm_SearchForm_action_results"><i class="far fa-search"></i></button>
										</form>
                                       </li>
                                   </ul>
                               </div>
                           <% end_if %>
                           <% if $Title == "Main Menu" %>
                               <div class="main-nav">
                                   <ul>
                                       <% loop $Menu %>
                                           <li class="has-dropdown">
                                       		   <a <% if $ExternalLink %>href="$ExternalLink" <% else %>href="$PageLink.Link" <% end_if %>>$Title <% if $DropdownMenu %><i class="far fa-angle-down"></i><% end_if %></a>
                                       		   <% if $DropdownMenu %>
                                       		      <ul class="dropdown-menu">
	                                                 <% loop $DropdownMenu %>
	                                                   <li class="has-thirdleveldropdown">
	                                                   	<a <% if $ExternalLink %>href="$ExternalLink" <% else %>href="$PageLink.Link" <% end_if %>>$Title <% if $ThirdLevelDropdown %><i class="far fa-angle-right"></i><% end_if %></a>
	                                                   	<% if $ThirdLevelDropdown %>
	                                                   	   <ul class="thirdlvldropdown-menu">
		                                                   	   <% loop $ThirdLevelDropdown %>
		                                                   	      <li><a <% if $ExternalLink %>href="$ExternalLink" <% else %>href="$PageLink.Link" <% end_if %>>$Title</a></li>
		                                                   	   <% end_loop %>
	                                                   	   </ul>
	                                                   	<% end_if %>
	                                                   </li>
	                                                 <% end_loop %>
                                                 </ul>
                                               <% end_if %>
                                           </li>
                                       <% end_loop %>
                                   </ul>
                               </div>
                           <% end_if %>
                       <% end_loop %>
                   <% end_if %>
                </div>
                <div class="mobile_nav">
                    <button class="hamburger hamburger--spin" type="button">
                      <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                      </span>
                    </button>
                </div>
                <div class="mobile-menu">
                    <% if $SiteConfig.Navigations %>
                        <% loop $SiteConfig.Navigations %>
                            <% if $Title == "Main Menu" %>
                                <ul>
                                    <% loop $Menu %>
                                        <li class="has-dropdown">
                                            <a <% if $ExternalLink %>href="$ExternalLink" <% else %>href="$PageLink.Link" <% end_if %>>$Title</a>
                                            <% if $DropdownMenu %>
                                                <ul class="dropdown-menu">
                                                    <% loop $DropdownMenu %>
                                                        <li class="has-thirdleveldropdown">
                                                            <a <% if $ExternalLink %>href="$ExternalLink" <% else %>href="$PageLink.Link" <% end_if %>>$Title</a>
                                                            <% if $ThirdLevelDropdown %>
                                                                <ul class="thirdlvldropdown-menu">
                                                                    <% loop $ThirdLevelDropdown %>
                                                                        <li><a <% if $ExternalLink %>href="$ExternalLink" <% else %>href="$PageLink.Link" <% end_if %>>$Title</a></li>
                                                                    <% end_loop %>
                                                                </ul>
                                                            <% end_if %>
                                                        </li>
                                                    <% end_loop %>
                                                </ul>
                                            <% end_if %>
                                        </li>
                                    <% end_loop %>
                                    <li>
                                        <form id="SearchForm_SearchForm" action="/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded">
                                            <p id="SearchForm_SearchForm_error" class="message " style="display: none"></p>
                                            <input type="text" name="Search" class="search-text" id="SearchForm_SearchForm_Search" placeholder="Enter Search...">
                                            <button type="submit" class="search-btn" id="SearchForm_SearchForm_action_results"><i class="far fa-search"></i></button>
                                        </form>
                                    </li>
                                </ul>
                            <% end_if %>
                        <% end_loop %>
                    <% end_if %>
                </div>
            </div>
        </div>
    </header>
<% else %>
<header class="header" role="banner">
    <div class="inner">
        <div class="unit size4of4 lastUnit">
            <a href="$BaseHref" class="brand" rel="home">
                <h1>$SiteConfig.Title</h1>
                <% if $SiteConfig.Tagline %>
                    <p>$SiteConfig.Tagline</p>
                <% end_if %>
            </a>
            <% if $SearchForm %>
                <span class="search-dropdown-icon">L</span>
                <div class="search-bar">
                    $SearchForm
                </div>
            <% end_if %>
            <% include Navigation %>
        </div>
    </div>
</header>
<% end_if %>
<% end_if %>