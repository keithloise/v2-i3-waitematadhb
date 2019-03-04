<% include HeroBanner %>
<div class="inner" <% if $PageBackground %>style="background-image: url('{$PageBackground.URL}');"<% end_if %>>
    <div class="page-container" style="<% if $Width %>max-width:{$Width}px;margin: auto;<% end_if %><% if $PaddingTop %>padding-top: {$PaddingTop}px;<% end_if %><% if $PaddingBot %>padding-bottom: {$PaddingBot}px;<% end_if %><% if $PaddingRight %>padding-right: {$PaddingRight}px;<% end_if %><% if $PaddingLeft %>padding-left: {$PaddingLeft}px;<% end_if %>">
        <% if $VisibleModules %>
            <div class="page-wrapper clearfix">
                <% loop $VisibleModules %>
                    <div class="section<% if $SectionContWidth == 'Full' %> full-width clearfix<% else %> unit {$SectionContWidth}<% end_if %>">
                        <div id="$SectionID($Title)" class="$DisplayTypeTrim<% if $BackgroundOverlay %> section-overlay<% end_if %><% if $Animate %> wow animated $Animate <% if $AnimateDelay %>{$AnimateDelay} <% end_if %><% if $AnimateSpeed %>{$AnimateSpeed}<% end_if %><% end_if %>" style="<% if $SectionBgImage %>background-image: url('{$SectionBgImage.URL}'); <% if $ActivateParallax %>background-size:cover;background-attachment: fixed;<% end_if %><% else %><% if $BgColorGradient1 || $BgColorGradient2 %>background-image: linear-gradient(to right, #{$BgColorGradient1}, #{$BgColorGradient2});<% end_if %><% end_if %>">
                             <% if $BackgroundOverlay %>
                                <style>
                                    #$SectionID($Title) {
                                        background-color: $BgOverlayColor.CSSColor(0.5);
                                        background-blend-mode: multiply;
                                    }
                                </style>
                            <% end_if %>
                            <div class="section-wrapper<% if $Padding(Top) > 0 %> section-padding<% end_if %> clearfix" style="<% if $SectionWidth %>max-width:{$SectionWidth}px;<% end_if %><% if $Padding(Top) > 0 %>padding-top:{$Padding(Top)}px;<% else %>padding-top:{$Padding(Top)}px;<% end_if %><% if $Padding(Bot) > 0 %>padding-bottom:{$Padding(Bot)}px;<% else %>padding-bottom:{$Padding(Bot)}px;<% end_if %><% if $Padding(Left) > 0 %>padding-left:{$Padding(Left)}px;<% else %>padding-left:{$Padding(Left)}px;<% end_if %><% if $Padding(Right) > 0 %>padding-right:{$Padding(Right)}px;<% else %>padding-right:{$Padding(Right)}px;<% end_if %>">
                                <% if $OffHeader == 0 %>
                                    <% if $SectionHeader %>
                                        <style>
                                           @media only screen and (min-width: 1450px) {
                                               <% if $SectionHeaderSize %>
                                                   #$SectionID($Title) .section-header-wrapper h1 {
                                                       font-size: {$SectionHeaderSize}px;
                                                   }
                                               <% end_if %>
                                               <% if $SectionSubHeaderSize %>
                                                   #$SectionID($Title) .section-header-wrapper h2,
                                                   #$SectionID($Title) .section-header-wrapper h3,
                                                   #$SectionID($Title) .section-header-wrapper h4 {
                                                       font-size: {$SectionSubHeaderSize}px;
                                                   }
                                               <% end_if %>
                                           }
                                        </style>
                                        <div class="section-header-wrapper<% if $HeaderAnimate %> wow animated $HeaderAnimate<% if $HeaderAnimateDelay %> {$HeaderAnimateDelay}<% end_if %><% if $HeaderAnimateSpeed %>  {$HeaderAnimateSpeed}<% end_if %><% end_if %>">
                                            $SectionHeader
                                            <% if  $BtnSectionHeader %>
                                                <% if $PageLink %>
                                                    <div class="section-header-button">
                                                        <a href="$PageLink.Link" class="btn-blue align-center">{$ButtonLabel}</a>
                                                    </div>
                                                <% end_if %>
                                            <% end_if %>
                                        </div>
                                    <% end_if %>
                                <% end_if %>
                                $Show
                                <% if $BtnSectionHeader == 0 %>
                                    <% if $PageLink %>
                                        <p class="center margin-default wow animated fadeInUp">
                                            <a href="$PageLink.Link" class="theme-btn btn-orange"><span>$ButtonLabel <i class="fas fa-chevron-right"></i></span></a>
                                        </p>
                                    <% end_if %>
                                <% end_if %>
                            </div>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        <% end_if %>
    </div>
</div>