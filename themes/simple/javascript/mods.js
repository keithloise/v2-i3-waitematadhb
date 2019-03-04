var selectedFilterArr = [];
var test = true;

$(document).ready(function() {
    scrollTopHeight();
    scrollTopHeightBig();
    $(window).scroll(function () {
        scrollTopHeight();
        scrollTopHeightBig();
    });
    var wow = new WOW(
        {
            offset: 500,    // distance to the element when triggering the animation (default is 0)
            mobile: false,  // trigger animations on mobile devices (default is true)
            live: true,     // act on asynchronously loaded content (default is true)
            callback: function(box) {
                // the callback is fired every time an animation is started
                // the argument that is passed in is the DOM node being animated
            },
            scrollContainer: null // optional scroll container selector, otherwise use window
        }
    );
    wow.init();

    $('.nav-container .primary ul li.hasChildren').click(function() {
        if ($(this).hasClass('activeChildMenu')) {
            $(this).removeClass('activeChildMenu');
            $(this).next('.ChildrenMenu').css("max-height","0px");
        }else {
            $(this).addClass('activeChildMenu');
            $(this).next('.ChildrenMenu').css("max-height","900px");
        }
    });

    $('.filter-selector').click(function() {
        var filter_list = $('.filters-list');
        if(filter_list.hasClass('open-filter')){
            filter_list.removeClass('open-filter');
        }else{
            filter_list.addClass('open-filter');
        }
    });
    $('.filters-list li').each(function () {
       $(this).click(function () {
           var filter_value = $(this).data('value');
           $('.filter-selector span').text(filter_value);
           $(this).parent('.filters-list').removeClass('open-filter');
           if(filter_value == "All") {
               $('.listings').each(function () {
                   $(this).fadeIn('fast');
               });
           }else {
               $('.listings').each(function () {
                   $(this).fadeOut('fast');
                   var listing_date = $(this).data('date');
                   if(listing_date == filter_value) {
                       $(this).fadeIn('fast');
                   }
               });
           }
       });
    });

    $('.search-btn').click(function() {
        if ($(this).hasClass('search-clicked')) {
            $(this).removeClass('search-clicked');
            $('.search-box').slideUp( "slow" );
        }else{
            $(this).addClass('search-clicked');
            $('.search-box').slideDown( "slow" );
        }
    });

    var t, ctr = 0;
    $('.profile-container').on("mouseenter", function () {
        var image_container = $(this).find('img.profile-image');
        var image_1 = image_container.data("image");
        var image_2 = image_container.data("image2");
        var image_3 = image_container.data("image3");
        t = setInterval(function(){
            ctr = ctr + 1;
            if(ctr == 1) {
                image_container.attr("src",image_2);
            }else if(ctr == 2) {
                image_container.attr("src",image_3);
            }else {
                image_container.attr("src",image_1);
            }
            if (ctr > 3) {
                ctr = 0;
            }
        }, 750);
    }).on("mouseleave", function() {
        var profile_image_container  = $(this).find('img.profile-image');
        var profile_image1 = profile_image_container.data("image");
        profile_image_container.attr("src",profile_image1)
        clearInterval(t);
    });

    viewProfileOverview();
    getAllBlogsYear();
    showBlogFilterSelectorYear();
    showBlogFilterSelectorMonth();
    selectBlogFilterOptionsYear();
    blogModuleItemFixHeight();
    projectFilterItemsCount();
    projectFilterResult();
    iconBoxHeightFixedHeight();
    blogPostHolderItemFixedHeight();
    playBgVideo();
    msieversion();

    //--------------------------------------------- ACCORDION ------------------------------
    var acc = document.getElementsByClassName("accordion-btn");
    var i;

    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.maxHeight){
                panel.style.maxHeight = null;
            } else {
                panel.style.maxHeight = panel.scrollHeight + "px";
            }
        });
    }
    //--------------------------------------------- PROJECT/RESOURCES/PUBLICATIONS ------------------------------
    $('.filter-selector-btn').click(function() {
        if($(this).hasClass('open-btn')) {
            $(this).removeClass('open-btn');
            $(this).next('.filter-list-item').removeClass('open-ul');
        }else{
            $(this).addClass('open-btn');
            $(this).next('.filter-list-item').addClass('open-ul');
        }
    });
    
    $('.vertical-result-btn').click(function() {
        $('.horizontal-result-btn').css('color','#333');
        $(this).css('color', '#ef7d00');
        $('.project-list .unit').each(function () {
            $(this).removeClass('size1of3');
            $(this).addClass('full-width');
        });
    });
    
    $('.horizontal-result-btn').click(function() {
        $('.vertical-result-btn').css('color','#333');
        $(this).css('color', '#ef7d00');
        $('.project-list .unit').each(function () {
            $(this).removeClass('full-width');
            $(this).addClass('size1of3');
        });
    });
    
    $('.show-items-btn').click(function() {
       if($(this).hasClass('clicked')) {
           $(this).removeClass('clicked');
           $('.show-items-selector').hide();
       }else{
           $(this).addClass('clicked');
           $('.show-items-selector').show();
       }
    });
    
    $('.show-items-selector li').click(function() {
        $('.show-items-btn').removeClass('clicked');
        $(this).parent().hide();
        var selected_val = $(this).text();
        $('.show-count').text(selected_val);
        projectList(selectedFilterArr, selected_val);
    });
    //--------------------------------------------- BUTTON TOGGLE ------------------------------------------
    $('.toggle-btn').click(function() {
        var parent_parent_nextAll   = $(this).parent().parent('.timeline-block').nextAll();
        var parent_parent_prevAll   = $(this).parent().parent('.timeline-block').prevAll();
        var parent_parent_prevUntil = $(this).parent().parent('.timeline-block').prevAll('div.size1of5:first');
        var parent_yeartimeline     = $(this).parent('.year-timeline');
        if($(this).hasClass('toggle-clicked')) {
            $(this).removeClass('toggle-clicked');
            parent_yeartimeline.removeClass('passed');
            parent_yeartimeline.removeClass('current');
            parent_parent_nextAll.find('.year-timeline').removeClass('passed');
            parent_parent_nextAll.find('.year-timeline').removeClass('current');
            parent_parent_prevUntil.find('.year-timeline').removeClass('passed');
            parent_parent_prevUntil.find('.year-timeline').addClass('current');
            parent_parent_nextAll.find('.year-timeline .toggle-btn').removeClass('toggle-clicked');
        }else{
            $(this).addClass('toggle-clicked');
            parent_yeartimeline.addClass('current');
            parent_parent_prevAll.find('.year-timeline').addClass('passed');
            parent_parent_prevAll.find('.year-timeline .toggle-btn').addClass('toggle-clicked');
        }
    });


    $('.explore-year').click(function(event) {
        var i = $(this).find('i');
        var data_value = $(this).data('value');
        if($(this).hasClass('explore-year-active')) {
        }else {
            $('.explore-year').each(function () {
                $(this).removeClass('explore-year-active');
                $(this).find('i').removeClass('fas fa-dot-circle');
                $(this).find('i').addClass('fas fa-circle');
            });
            $(this).addClass('explore-year-active');
            i.removeClass('fas fa-circle');
            i.addClass('fas fa-dot-circle');

            $('.year-circle').each(function() {
                $(this).removeClass('active')
            });
            $(this).prev('.year-circle').addClass('active');
        }

        $('.timeline-block').each(function () {
            var year_timeline_data = $(this).find('.year-timeline-text').data('value');
            if (year_timeline_data == data_value) {
               $(this).find('.year-timeline').addClass('current');
               $(this).find('.year-timeline').removeClass('passed');
               $(this).find('.year-timeline .toggle-btn').addClass('toggle-clicked');
               $(this).prevAll().find('.year-timeline').addClass('passed');
               $(this).prevAll().find('.year-timeline .toggle-btn').addClass('toggle-clicked');
               $(this).nextAll().find('.year-timeline').removeClass('passed');
               $(this).nextAll().find('.year-timeline').removeClass('current');
               $(this).nextAll().find('.year-timeline .toggle-btn').removeClass('toggle-clicked');
            }
        });

        // Add smooth scrolling explore nav HISTORY
        // Make sure this.hash has a value before overriding default behavior
        if (this.hash !== "") {
            // Prevent default anchor click behavior
            event.preventDefault();
            // Store hash
            var hash = this.hash;
            var location = ($(hash).offset().top - 500);

            // Using jQuery's animate() method to add smooth page scroll
            // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
            $('html, body').animate({
                scrollTop: location
            }, 800, function(){

                // Add hash (#) to URL when done scrolling (default click behavior)
                //window.location.hash = location;
            });
        } // End if

    });
    //--------------------------------------------- ISOTOPE ------------------------------------------------
    var container = $('.grid');
    $('.grid').isotope({
      itemSelector: '.grid-item',
      percentPosition: true,

    });
    //--------------------------------------------- FORM MODULE SELECT OPTION ------------------------------
    var x, i, j, selElmnt, a, b, c;
    /*look for any elements with the class "custom-select":*/
    x = document.getElementsByClassName("dropdown");
    console.log(x);
    if(x) {
        for (i = 0; i < x.length; i++) {
            selElmnt = x[i].getElementsByTagName("select")[0];
            /*for each element, create a new DIV that will act as the selected item:*/
            a = document.createElement("DIV");
            a.setAttribute("class", "select-selected");
            a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
            x[i].appendChild(a);
            /*for each element, create a new DIV that will contain the option list:*/
            b = document.createElement("DIV");
            b.setAttribute("class", "select-items select-hide");
            for (j = 1; j < selElmnt.length; j++) {
                /*for each option in the original select element,
                create a new DIV that will act as an option item:*/
                c = document.createElement("DIV");
                c.innerHTML = selElmnt.options[j].innerHTML;
                c.addEventListener("click", function (e) {
                    /*when an item is clicked, update the original select box,
                    and the selected item:*/
                    var y, i, k, s, h;
                    s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                    h = this.parentNode.previousSibling;
                    for (i = 0; i < s.length; i++) {
                        if (s.options[i].innerHTML == this.innerHTML) {
                            s.selectedIndex = i;
                            h.innerHTML = this.innerHTML;
                            y = this.parentNode.getElementsByClassName("same-as-selected");
                            for (k = 0; k < y.length; k++) {
                                y[k].removeAttribute("class");
                            }
                            this.setAttribute("class", "same-as-selected");
                            break;
                        }
                    }
                    h.click();
                });
                b.appendChild(c);
            }
            x[i].appendChild(b);
            a.addEventListener("click", function (e) {
                /*when the select box is clicked, close any other select boxes,
                and open/close the current select box:*/
                e.stopPropagation();
                closeAllSelect(this);
                this.nextSibling.classList.toggle("select-hide");
                this.classList.toggle("select-arrow-active");
            });
        }

        function closeAllSelect(elmnt) {
            /*a function that will close all select boxes in the document,
            except the current select box:*/
            var x, y, i, arrNo = [];
            x = document.getElementsByClassName("select-items");
            y = document.getElementsByClassName("select-selected");
            for (i = 0; i < y.length; i++) {
                if (elmnt == y[i]) {
                    arrNo.push(i)
                } else {
                    y[i].classList.remove("select-arrow-active");
                }
            }
            for (i = 0; i < x.length; i++) {
                if (arrNo.indexOf(i)) {
                    x[i].classList.add("select-hide");
                }
            }
        }
        /*if the user clicks anywhere outside the select box,
        then close all select boxes:*/
        document.addEventListener("click", closeAllSelect);
    }
});

$(window).resize(function() {
   blogModuleItemFixHeight();
   iconBoxHeightFixedHeight();
   blogPostHolderItemFixedHeight();

});
//--------------------------------------------- CHECK TOP HEIGHT ------------------------------
function scrollTopHeight() {
    var scrollheight = $(window).scrollTop();
    if(scrollheight >= 400) {
        $('header').addClass('header-scrolled');
        $('body').addClass('scrolled');
    } else {
        $('header').removeClass('header-scrolled');
        $('body').removeClass('scrolled');
    }
}

function scrollTopHeightBig() {
    var scrollheight = $(window).scrollTop();
    if(scrollheight >= 1000) {
        var scrollheight_fixed = (scrollheight - 1000);
        $('.explore-nav').addClass('explore-nav-scrolled');
        //$('.explore-nav-scrolled').css("top", scrollheight_fixed+"px");
    } else {
        $('.explore-nav').removeClass('explore-nav-scrolled');
    }
}
//--------------------------------------------- ICONBOX ------------------------------ 
function iconBoxHeightFixedHeight() {
    var title_maxHeight = -1;
    var post_maxHeight = -1;
    var width = $(window).width();

    var title_elemHeights = $('.IconBox .block-content h2').map(function () {
        return $(this).height();
    }).get();

    var p_elemHeights =  $('.IconBox .block-content p').map(function () {
        return $(this).height();
    }).get();
        
    var ul_elemHeights =  $('.IconBox .block-content ul').map(function () {
    return $(this).height();
    }).get();


    var title_maxHeight = Math.max.apply(null, title_elemHeights);
    $('.IconBox .badge-margin').each(function() {
        var title_elemHeight = ($(this).find('.block-content h2'));
        if (width > 920) {
            if (title_elemHeight.height() < title_maxHeight) {
                title_elemHeight.height(title_maxHeight);
            }
        }else{
            title_elemHeight.css('height','auto');
        }
    });

    var p_maxHeight = Math.max.apply(null, p_elemHeights);
    $('.IconBox .badge-margin').each(function() {
        var p_elemHeight = ($(this).find('.block-content p'));
        if (width > 920) {
            if (p_elemHeight.height() < p_maxHeight) {
                p_elemHeight.height(p_maxHeight);
            }
        }else{
            p_elemHeight.css('height','auto');
        }
    });
        
    var ul_maxHeight = Math.max.apply(null, ul_elemHeights);
    $('.IconBox .badge-margin').each(function() {
        var ul_elemHeight = ($(this).find('.block-content ul'));
        if (width > 920) {
            if (ul_elemHeight.height() < ul_maxHeight) {
                ul_elemHeight.height(ul_maxHeight);
            }
        }else{
            ul_elemHeight.css('height','auto');
        }
    });
}
//--------------------------------------------- BLOGPOST HOLDER PAGE ------------------------------
function blogPostHolderItemFixedHeight() {
    var title_maxHeight = -1;
    var post_maxHeight = -1;
    var width = $(window).width();

    var title_elemHeights = $('.Page-Blog .unit .blog-text-box h3').map(function () {
        return $(this).height();
    }).get();

    var post_elemHeights =  $('.Page-Blog .unit .blog-content p').map(function () {
        return $(this).height();
    }).get();

    var dateTime_elemHeights =  $('.Page-Blog .unit .blog-text-box .location-time-container').map(function () {
        return $(this).height();
    }).get();

    var title_maxHeight = Math.max.apply(null, title_elemHeights);
    $('.Page-Blog .unit').each(function() {
        var title_elemHeight = ($(this).find('.blog-text-box h3'));
        if (width > 920) {
            if (title_elemHeight.height() < title_maxHeight) {
                title_elemHeight.height(title_maxHeight);
            }
        }else{
            title_elemHeight.css('height','auto');
        }
    });

    var post_maxHeight = Math.max.apply(null, post_elemHeights);
    $('.Page-Blog .unit').each(function() {
        var post_elemHeight = ($(this).find('.blog-content p'));
        if (width > 920) {
            if (post_elemHeight.height() < post_maxHeight) {
                post_elemHeight.height(post_maxHeight);
            }
        }else{
            post_elemHeight.css('height','auto');
        }
    });

    var dateTime_maxHeight = Math.max.apply(null, dateTime_elemHeights);
    $('.Page-Blog .unit').each(function() {
        var dateTime_elemHeight = ($(this).find('.blog-text-box .location-time-container'));
        if (width > 920) {
            if (dateTime_elemHeight.height() < dateTime_maxHeight) {
                dateTime_elemHeight.height(dateTime_maxHeight);
            }
        }else{
            dateTime_elemHeight.css('height','auto');
        }
    });

}
function viewProfileOverview() {
    $('.PeopleList .profile-container').click(function() {
        let profile_data = $(this).data('modal');

        $('.modal-overlay').addClass('open-modal');
        $('#'+profile_data).addClass('active');
    });

    $('.modal-overlay').click(function() {
        $(this).removeClass('open-modal');
        closeProfileModal();
    });
    $('.close-modal').click(function() {
        $('.modal-overlay').removeClass('open-modal');
        closeProfileModal();
    });
}

//Modal Function
function closeProfileModal() {
    $('.PeopleList .team-modal').each(function (){
        $(this).removeClass('active');
    });
}
//--------------------------------------------- HOMEPAGE SECTION EVENTS ------------------------------
function blogModuleItemFixHeight() {
    var title_maxHeight = -1;
    var post_maxHeight = -1;
    var width = $(window).width();

    var title_elemHeights = $('#Events .section-wrapper .vertical .unit .blog-content .blog-title').map(function () {
        return $(this).height();
    }).get();

    var post_elemHeights =  $('#Events .section-wrapper .vertical .unit .blog-content .blog-location').map(function () {
        return $(this).height();
    }).get();

    var title_maxHeight = Math.max.apply(null, title_elemHeights);
    $('#Events .section-wrapper .vertical .unit').each(function() {
        var title_elemHeight = ($(this).find('.blog-title'));
        if (width > 920) {
            if (title_elemHeight.height() < title_maxHeight) {
                title_elemHeight.height(title_maxHeight);
            }
        }else{
            title_elemHeight.css('height','auto');
        }
    });

    var post_maxHeight = Math.max.apply(null, post_elemHeights);
    $('#Events .section-wrapper .vertical .unit').each(function() {
        var post_elemHeight = ($(this).find('.blog-location'));
        if (width > 920) {
            if (post_elemHeight.height() < post_maxHeight) {
                post_elemHeight.height(post_maxHeight);
            }
        }else{
            post_elemHeight.css('height','auto');
        }
    });
}


//PROJECT FILTER
function projectFilterItemsCount() {
    var filterItems = [];
    var dataRawItems,dataItem;
    $('.project-list .project-list-item.active-list').each(function() {
        dataRawItems = $(this).data('filters');
        dataItem = dataRawItems.split(",");
        for (i = 0; i < dataItem.length; i++) {
            filterItems.push(dataItem[i]);
        }
    });
    filterItems.sort();
    var current = null;
    var cnt = 0;
    for (var i = 0; i < filterItems.length; i++) {
        if (filterItems[i] != current) {
            if (cnt > 0) {
                //console.log(current + ' comes --> ' + cnt + ' times<br>');
                projectFilterList(current,cnt);
            }
            current = filterItems[i];
            cnt = 1;
        } else {
            cnt++;
        }
    }
    if (cnt > 0) {
        projectFilterList(current,cnt);
    }
}

function projectFilterList(item,count) {
    var filter_name;
    $('.filter-body .filter-list-item ul').each(function() {
        $(this).find('li').each(function() {
            filter_name = $(this).find('.filter-name').text();
            if(filter_name == item) {
                $(this).find('.count-items').remove();
                //$(this).append("<span class='count-items'>"+count+"</span>");
            }
        });
    });
}

function projectFilterResult() {
    var selectedFilter;
    $('.filter-body .filter-list-item ul').each(function() {
        $(this).find('li').each(function() {
            $(this).click(function() {
                //console.log($(this).find('.filter-name').text());
                selectedFilter = $(this).find('.filter-name').text().trim();
                if($(this).hasClass('selected-filter')) {
                    $(this).removeClass('selected-filter');
                    var index = selectedFilterArr.indexOf(selectedFilter);
                    if (index > -1) {
                       selectedFilterArr.splice(index, 1);
                    }
                    //showFilteredProjects(selectedFilterArr);
                    projectList(selectedFilterArr);
                }else{
                    selectedFilterArr.push(selectedFilter);
                    $(this).addClass('selected-filter');
                    //showFilteredProjects(selectedFilterArr);
                    projectList(selectedFilterArr);
                }
            });
        });
    });
}

function projectList(selectedFilterArr, showItem = null){
    var dataRawItems,dataItem, ctr = 0;
    $('.project-list .project-list-item.active-list').each(function(){
        dataRawItems = $(this).data('filters');
        dataItem = dataRawItems.split(",");
        if(checkIn(dataItem,selectedFilterArr)) {
            ctr = (parseInt(ctr) + 1);
            if (showItem) {  
               if (ctr <= showItem) {
                   $(this).parent().show();
               }else{
                   $(this).parent().hide();
               }
            }else{
               if (ctr <= $('.show-count').text()) {
                   $(this).parent().show();
               }else{
                   $(this).parent().hide();
               }
            }
        }else{
            $(this).parent().hide();
        }
    });
}

function checkIn(a,b){
  return b.every(function(e){
  return e === this.splice(this.indexOf(e),1)[0];
 }, a.slice());
}
//BUTTON FILTER
function showFilteredProjects(selectedFilterArr){
    $('#filter_project').click(function(){
        projectList(selectedFilterArr);
    });
}

//Blog Filter Populate Year
function getAllBlogsYear() {
    var arr_year  = [];
    var year;
    $('#filter_year .filters-list').append('<li>All</li>')
    $('.Page-Blog.Blog .listings').each(function() {
        year  = $(this).data('year');
        var year_exist = arr_year.indexOf(year);
        if(year_exist < 0) {
            arr_year.push(year);
            $('#filter_year .filters-list').append('<li>'+year+'</li>');
        }
    });
}
//Blog Filter Show -  Year
function showBlogFilterSelectorYear() {
    $('#filter_year .filter-selector').click(function() {
        if($(this).hasClass('btn-clicked')) {
            $(this).removeClass('btn-clicked');
            $(this).next('.filters-list').hide();
        }else{
            $(this).addClass('btn-clicked');
            $(this).next('.filters-list').show();
        }
    });
}
//Blog Select Year
function selectBlogFilterOptionsYear() {
    $('#filter_year .filters-list li').each(function() {
        $(this).click(function() {
            var selected_option = $(this).text();
            $(this).parent().hide();
            $('#filter_year .filter-selector').removeClass('btn-clicked');
            $('#filter_year .filter-selector .btn-text').text(selected_option);

            $('.Page-Blog.Blog .listings').each(function() {
                var year = $(this).data('year');
                $(this).hide();
                $(this).removeClass('show_listing');
                if(selected_option != "All") {
                    if(year == selected_option) {
                        $(this).addClass('show_listing');
                        $(this).fadeIn();
                        $('#filter_month').show();
                    }
                }else{
                    $(this).fadeIn();
                    $(this).removeClass('show_listing');
                    $('#filter_month').hide();
                }
            });
        });
    });
}
//Blog Filter Populate Month
function getAllMonthsOfFilteredBlogs() {
    var arr_month = [];
    var month;

    $('#filter_month .filters-list').text('');
    $('#filter_month .filters-list').append('<li>All</li>')
    $('.Page-Blog.Blog .show_listing').each(function() {
        month  = $(this).data('month');
        var month_exist = arr_month.indexOf(month);
        if(month_exist < 0) {
            arr_month.push(month);
            $('#filter_month .filters-list').append('<li>'+month+'</li>');
        }
    });
}
//Blog Filter Show -  Month
function showBlogFilterSelectorMonth() {
    $('#filter_month .filter-selector').click(function() {
        if($(this).hasClass('btn-clicked')) {
            $(this).removeClass('btn-clicked');
            $(this).next('.filters-list').hide();
        }else{
            $(this).addClass('btn-clicked');
            $(this).next('.filters-list').show();
            getAllMonthsOfFilteredBlogs();
            selectBlogFilterOptionsMonth();
        }
    });
}
//Blog Select Month
function selectBlogFilterOptionsMonth() {
    $('#filter_month .filters-list li').each(function() {
        $(this).click(function() {
            var selected_option = $(this).text();
            $(this).parent().hide();
            $('#filter_month .filter-selector').removeClass('btn-clicked');
            $('#filter_month .filter-selector .btn-text').text(selected_option);

            $('.Page-Blog.Blog .show_listing').each(function() {
                var month = $(this).data('month');
                $(this).hide();
                if(selected_option != "All") {
                    if(month == selected_option) {
                        $(this).fadeIn();
                        $('#filter_month').show();
                    }
                }else{
                    $(this).fadeIn();
                }
            });
        });
    });
}

function playBgVideo() {
    let vid = document.getElementById("bgVideo");
    if (vid) {
        let fal = $('.play-video').find('.fal');
        $('.play-video').click(function () {
            if ($(this).hasClass('play')) {
                vid.pause();
                $(this).removeClass('play');
                fal.removeClass('fa-pause-circle');
                $(this).addClass('pause');
                fal.addClass('fa-play-circle');
            } else {
                vid.play();
                $(this).removeClass('pause');
                fal.removeClass('fa-play-circle');
                $(this).addClass('play');
                fal.addClass('fa-pause-circle');
            }
        });
        vid.addEventListener('ended', function () {
            fal.removeClass('fa-pause-circle');
            fal.addClass('fa-play-circle');
            $('.play-video').removeClass('play');

            let v = vid.currentSrc;
            vid.src = '';
            vid.src = v;
        });
    }
}

//Check IE browser
function msieversion() {

    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))  // If Internet Explorer, return version number
    {
        $('.heroBanner-IE').show();
    }
    else
    {
        $('.heroBanner-AnyBrowser').show();
    }

    return false;
}

