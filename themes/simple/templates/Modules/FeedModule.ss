<div class="unit size2of5">
    <div class="feed-block twitter-feed wow animate fadeInUp">
        <h1>Latest Tweets</h1>
        <a class="twitter-timeline fadeIn" data-width="100%" data-height="350" data-theme="light" data-link-color="#004184" data-chrome="noheader nofooter" href="https://twitter.com/saferpracticenz">Latest Tweets</a>
    </div>
    <div class="feed-block latest-news wow animate fadeInDown">
        <h1>What's Happening?</h1>
        <% if $BlogPost %>
            <% loop $BlogPost.Limit(2) %>
                <p><a href="$Link">$Title</a></p>
            <% end_loop %>
        <% else %>
            <p>No latest news</p>
        <% end_if %>
    </div>
</div>

<div class="unit size3of5 wow animate fadeInRight">
    <div class="feed-block feedback-form">
        <div class="feedback-form-preheader">
            <p> Give us your feedback</p>
        </div>
        <div class="feedback-form-header">
            <p>We would love to hear from you.<Br>You can visit our FAQ for more info</p>
        </div>
        <div class="contact-form">
            <div class="contact-form-container">
                <form>
                    <input type="text" placeholder="Your email">
                    <i class="fas fa-comment-alt"></i>
                    <textarea placeholder="Message"></textarea>
                    <input type="submit" value="Send" class="btn-light">
                </form>
            </div>
        </div>
    </div>
</div>