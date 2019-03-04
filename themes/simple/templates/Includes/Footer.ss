<% if $SiteConfig.FooterStyles  == "i3" %>
    <footer class="footer" role="contentinfo">
        <div class="footer-wrapper unit lastUnit">
            <div class="inner">
                <div class="unit size1of4">
                    <h4>QUICK LINKS</h4>
                    <% include Navigation %>
                </div>
                <div class="unit size1of4">
                    <h4>CONTACT US</h4>
                    $SiteConfig.ContactDetails
                </div>
                <div class="unit size1of4">
                    <h4>LATEST TWEETS</h4>
                    <a class="twitter-timeline" data-width="300" data-height="320" data-theme="dark" data-link-color="#ef823b" data-chrome="noheader nofooter transparent" href="https://twitter.com/i3waitematadhb">Latest Tweets</a>
                </div>
                <div class="unit size1of4">
                    <div class="footer-logo-wrapper">
                        <% if $SiteConfig.i3LogoFooter %>
                            <div class="footer-logo">
                                <img src="$SiteConfig.i3LogoFooter.URL">
                            </div>
                        <% end_if %>
                        <% if $SiteConfig.DHBLogo %>
                            <div class="footer-logo">
                                <img src="$SiteConfig.DHBLogo.URL">
                            </div>
                        <% end_if %>
                        <% if $SiteConfig.OrgLogo %>
                                <div class="footer-logo">
                                    <img src="$SiteConfig.OrgLogo.URL">
                                </div>
                        <% end_if %>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <div class="post-footer">
        <div class="post-footer-wrapper unit lastUnit">
            <div class="inner">
                <div class="unit size1of2">
                    <p>Copyright © WAITEMATA DHB $Now.Year</p>
                </div>
                <div class="unit size1of2 right">
                    <% if $SiteConfig.SocialNetworkItems %>
                        <div class="social-icons clearfix">
                            <ul>
                                <% loop $SiteConfig.SocialNetworkItems %>
                                    <li><a href="$Link" target="_blank" title="$Title"><i class="fab $IconClass"></i></a></li>
                                <% end_loop %>
                            </ul>
                        </div>
                    <% end_if %>
                </div>
            </div>
        </div>
    </div>
<% else_if $SiteConfig.FooterStyles == "SIP" %>
    <footer class="footer" role="contentinfo" style="<% if $SiteConfig.FooterBorder %>border-top:{$SiteConfig.FooterBorder}px solid;<% if $SiteConfig.FooterBorderBgc%>border-color:#{$SiteConfig.FooterBorderBgc};<% end_if %><% end_if %><% if $SiteConfig.FooterBgColor %>background-image: linear-gradient(to right, #{$SiteConfig.FooterBgColor} , #{$SiteConfig.FooterBgColor2});<% end_if %><% if $SiteConfig.PaddingLeft %>padding-left:{$SiteConfig.PaddingLeft}px;<% end_if %><% if $SiteConfig.PaddingRight %>padding-right:{$SiteConfig.PaddingRight}px;<% end_if %><% if $SiteConfig.PaddingTop %>padding-top:{$SiteConfig.PaddingTop}px;<% end_if %><% if $SiteConfig.PaddingBottom %>padding-bottom:{$SiteConfig.PaddingBottom}px;<% end_if %>">
        <div class="inner clearfix" style="<% if $SiteConfig.FooterWidth %>max-width:{$SiteConfig.FooterWidth}px;margin: auto;<% end_if %>">
            <% if $SiteConfig.FooterBlocks %>
                <% loop $SiteConfig.FooterBlocks %>
                    <div class="unit $Width">
                        <h3 class="footer-block-title">$Title</h3>
                        $Content
                    </div>
                <% end_loop %>
            <% end_if %>
            <% if $SiteConfig.OrgLogo || $SiteConfig.DHBLogo %>
                <div class="unit size1of4">
                    <div class="logo-footer align-center">
                        <% if $SiteConfig.OrgLogo %>
                       	    <img src="$SiteConfig.OrgLogo.URL">
                        <% end_if %>
                        <% if $SiteConfig.DHBLogo %>
                        	<img src="$SiteConfig.DHBLogo.URL">
                        <% end_if %>
                    </div>
                </div>
            <% end_if %>
        </div>
    </footer>
    <div class="post-footer" style="background-color: #333333; padding: 25px 0px;">
        <div class="post-footer-wrapper unit lastUnit">
            <div class="inner" style="max-width: 1450px; margin: auto">
                <div class="unit size1of2">
                    <p style="color:#fff;font-size: 18px;">Copyright © Safety in Practice: Auckland North-Central $Now.Year</p>
                </div>
                <div class="unit size1of2 right">
                    <% if $SiteConfig.SocialNetworkItems %>
                        <div class="social-icons clearfix">
                            <ul>
                                <% loop $SiteConfig.SocialNetworkItems %>
                                    <li><a href="$Link" target="_blank" title="$Title"><i class="fab $IconClass"></i></a></li>
                                <% end_loop %>
                            </ul>
                        </div>
                    <% end_if %>
                </div>
            </div>
        </div>
    </div>
<% else %>
    <footer class="footer" role="contentinfo">
        <div class="inner">
            <div class="unit size4of4 lastUnit">
                <div class="left">
                    <a href="$BaseHref" class="brand" rel="home">$SiteConfig.Title</a>
                    <span class="arrow">&rarr;</span> <% include Navigation %></div>
                <small class="right"><a href="http://simple.innovatif.com/about/">Theme</a> by <a href="http://www.saratusar.com">Sara</a> (Innovatif) / Powered by <a href="http://silverstripe.org">SilverStripe</a></small>
            </div>
        </div>
    </footer>
<% end_if %>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>