<% if $VisibleItems %>
    <div class="unit size1of1 clearfix">
    <% loop $VisibleItems %>
        <div class="unit size1of4 align-center<% if $Animate %> wow animated {$Animate} <% if $AnimateDelays %>{$AnimateDelays} <% end_if %><% if $AnimateSpeeds %>{$AnimateSpeeds}<% end_if %><% end_if %>">
            <div class="profile-container" data-modal="modal_{$ID}">
                <% if $PageLink.ProfileImage %>
                    <img id="profile-id-{$PageLink.ID}" class="profile-image" src="$PageLink.ProfileImage.URL" <% if $PageLink.ProfileImage %>data-image="$PageLink.ProfileImage.URL"<% end_if %> <% if $PageLink.ProfileImage2 %>data-image2="$PageLink.ProfileImage2.URL"<% end_if %> <% if $PageLink.ProfileImage3 %>data-image3="$PageLink.ProfileImage3.URL"<% end_if %>>
                <% else %>
                    <img id="profile-id-{$PageLink.ID}" class="profile-image" src="themes/simple/images/default_prof.jpg">
                <% end_if %>
                <div class="profile-link">
                    <a  <% if $LinkPage %>href="$PageLink.Link"<% end_if %>>
                    <% if $ShowArrow %>
                        <i class="fas fa-chevron-right"></i>
                    <% end_if %>
                    </a>
                </div>
                <div class="profile-overlay">
                    <div class="profile-details center">
                        <h2>$Title</h2>
                        <p>$PageLink.Position</p>
                    </div>
                </div>
            </div>
        </div>
        <% if $EnableModal %>
            <div id="modal_{$ID}" class="team-modal">
                <button class="close-modal"><i class="fas fa-times-circle"></i></button>
                <div class="unit size1of1 clearfix">
                    <div class="unit size2of5">
                         <div class="team-modal-image">
                             <% if $PageLink.ProfileImage2 %>
                               <img src="$PageLink.ProfileImage2.URL">
                             <% else %>
                                 <img id="profile-id-{$PageLink.ID}" class="profile-image" src="themes/simple/images/default_prof.jpg">
                             <% end_if %>
                             <div class="profile-details center">
                                <h2>$Title</h2>
                                <p>$PageLink.Position</p>
                             </div>
                            <% if $PageLink.SocialItem %>
                                 <div class="social-buttons">
                                     <% loop $PageLink.SocialItem %>
                                         <a href="<% if $Title == 'Email' %>mailto:$Link<% else %>$Link<% end_if %>" class="social-btn" style="<% if $SocialColor %>background-color:#{$SocialColor}<% end_if %>" target="_blank" rel="nofollow"><i class="fab $IconClass"></i><span>$ButtonLabel</span></a>
                                     <% end_loop %>
                                 </div>
                            <% end_if %>
                         </div>
                    </div>
                    <div class="unit size3of5">
                        <div class="team-modal-content">
                           $PageLink.Content
                        </div>
                        <% if $LinkPage %>
                            <div class="view-profile-btn">
                                <a href="$PageLink.Link" class="theme-btn btn-orange"><span>View Profile</span></a>
                            </div>
                        <% end_if %>
                    </div>
                </div>
            </div>
        <% end_if %>
    <% end_loop %>
    </div>
<% end_if %>




