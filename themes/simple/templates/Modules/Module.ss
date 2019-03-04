<% if $Content %>
	<div id="content_{$ID}" class="<% if $LightText %>text-light <% end_if %>content__module <% if $Animate %>wow animated $Animate <% if $AnimateDelay %>{$AnimateDelay} <% end_if %><% if $AnimateSpeed %>{$AnimateSpeed}<% end_if %><% end_if %>" >
	    <div class="block-content" style="<% if $BlockBgColor && $BlockBgColor2 %>background-image: linear-gradient(to right, #{$BlockBgColor} , #{$BlockBgColor2});<% else %><% if $BlockBgColor %><background:#{$BlockBgColor};<% end_if %><% end_if %><% if $BlockPadding %>padding:{$BlockPadding}px;<% end_if %>">
	        $Content
	    </div>
	</div>
<% end_if %>