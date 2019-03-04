<% if $VisibleItems %>
    <% loop $VisibleItems %>
        <% if $InputType %>
            <div class="input-form<% if $isInline %> inline-input<% end_if %>">
                <input type="hidden" class="hidden_question" value="{$HidQuestion}">
                <% if $TextLabel %>
                    <label for="form_text_{$Title}">$TextLabel</label>

                <% end_if %>
                <% if $Question %>
                    <div class="question-text">
                        $Question
                    </div>
                <% end_if %>
                <% if $InputType != "Textarea" %>
                     <input type="{$InputType}" name="$Title" id="form_text_{$Title}" placeholder="{$Placeholder}">
                <% else %>
                     <textarea rows="10" placeholder="{$Placeholder}"></textarea>
                <% end_if %>
                <label for="form_text_{$Title}" id="error_message"></label>
            </div>
        <% end_if %>
    <% end_loop %>
<% end_if %>