var selected_resources = [];
$(document).ready(function() {
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

    var num_filter, data_resources, data_module, resources_length;
    $('.filter-container .data-filter').each(function(index){
        $(this).find('.filter-btn').click(function () {

            $(this).parent().nextAll().find('ul').hide();
            $(this).parent().nextAll().find('.filter-btn').removeClass('btn-clicked');
            $(this).parent().prevAll().find('ul').hide();
            $(this).parent().prevAll().find('.filter-btn').removeClass('btn-clicked');

            if($(this).hasClass('btn-clicked')) {
                $(this).removeClass('btn-clicked');
                $(this).nextAll('.selector-filter').hide();
            }else{
                $(this).addClass('btn-clicked');
                $(this).parent().find('.selector-filter').each(function () {
                    console.log($(this).hasClass('active-selector'));
                    if($(this).hasClass('active-selector')) {
                        $(this).fadeIn();
                    } else {
                        $(this).hide();
                    }
                });
            }
        });
        $(this).find('.selector-filter li').each(function(){
            $(this).click(function() {
                var filter_container = $(this).parent().parent();
                var selector_filter  = $(this).parent();
                var btn_filter       = filter_container.find('.filter-btn');
                num_filter = index;
                selected_resources.splice(num_filter, 1);
                var li_TxtValue = $(this).find('span').text();
                if(li_TxtValue == "All") {
                    selector_filter.hide();
                    btn_filter.find('.btn-text').text('Please Select');
                    btn_filter.removeClass('btn-clicked');
                    filter_container.nextAll().hide();
                    filter_container.nextAll().find('.filter-btn .btn-text').text('Please Select');
                    if (num_filter != 0) {
                        selected_resources.splice(num_filter, 1);
                    } else {
                        selected_resources = [];
                    }
                    resources_length = selected_resources.length;
                    filterResults(selected_resources);
                }else{
                    if(num_filter == 0) {
                        filter_container.nextAll().hide();
                        selected_resources = [];
                    }
                    selector_filter.hide();
                    filter_container.nextAll().find('.filter-btn .btn-text').text('Please Select');
                    btn_filter.find('.btn-text').text(li_TxtValue);
                    btn_filter.removeClass('btn-clicked');
                    filter_container.next().fadeIn();
                    selected_resources.splice(num_filter, 1, li_TxtValue);
                    filterResults(selected_resources);
                    resources_length = (selected_resources.length - 1);
                    if(num_filter == resources_length) {
                        filter_container.next().find('.selector-filter').each(function(){
                            data_resources = $(this).data('resources');
                            data_module    = $(this).data('module');
                            $(this).removeClass('active-selector');
                            if (data_resources && data_module) {
                                if(data_resources == selected_resources[0] && data_module == selected_resources [1]) {
                                    $(this).addClass('active-selector');
                                }else{
                                    $(this).removeClass('active-selector');
                                }
                            }else if (data_resources && data_module == null) {
                                if(data_resources == selected_resources[0]) {
                                    $(this).addClass('active-selector');
                                }else{
                                    $(this).removeClass('active-selector');
                                }
                            }else {
                                $(this).addClass('active-selector');
                            }
                        });
                    }
                }
            });
        });
    });

    $('.filtered_items-wrapper #module_type_clickable').each(function() {
        $(this).click(function(){

            var resources   = $(this).data('resources');
            var module_type = $(this).find('h2').text();

            if(selected_resources.length == 2) {
                selected_resources.push(module_type);
            }

            if(selected_resources.length < 1 || selected_resources.length == 1 ) {
                if(selected_resources.length < 1) {
                    selected_resources.push(resources);
                }
                selected_resources.push(module_type);

                $('.filter-container .data-filter').each(function(index) {
                     var ctr = index + 1;
                     if(ctr <= selected_resources.length) {
                         $(this).fadeIn();
                         $(this).find('.filter-btn .btn-text').text(selected_resources[index]);
                         $(this).find('.selector-filter').each(function(){
                             if($(this).data('resources') == selected_resources[0]) {
                                 $(this).addClass('active-selector');
                                 filterResults(selected_resources);
                             }
                         });
                     }
                });
            }
        });
    });

    //Tabs
    $('.open-tab').click(function () {
        if (!$(this).hasClass('active-tab')) {

           var data = $(this).data('module');
           $('.tab-buttons .open-tab').each(function(){
               $(this).removeClass('active-tab');
           });
           $(this).addClass('active-tab');
           tabItem(data);
        }
    });
    
    //Hamburger Menu
    var $hamburger = $(".hamburger");
    $hamburger.on("click", function(e) {
        $hamburger.toggleClass("is-active");
        // Do something else, like open/close menu
    });
    
    //Menu Dropdown
    $('.main-nav ul li.has-dropdown').each(function() {
	   $(this).hover(function(){
		  $('.main-nav ul li.has-dropdown').find('.dropdown-menu').hide();
		  $(this).find('.dropdown-menu').fadeIn();
		  $(this).find('.dropdown-menu').find('.has-thirdleveldropdown').each(function() {
			  $(this).hover(function(){
			  	 $(this).find('.thirdlvldropdown-menu').fadeIn();
			  },function() {
				 $('.main-nav ul li.has-dropdown').each(function() {
					 $(this).find('.dropdown-menu').find('.has-thirdleveldropdown').each(function(){
						 $(this).find('.thirdlvldropdown-menu').hide();
					 });
				 });
			  }); 
		  });
	   },function(){
		    $('.main-nav ul li.has-dropdown').each(function() {
			   $(this).find('.dropdown-menu').hide();
		    });
		});
    });
    
    //Team
    $('.profile-container').on("mouseenter", function () {
        var image_container = $(this).find('img.profile-image');
        var image_2 = image_container.data("image2");
        image_container.attr("src",image_2);
         
    }).on("mouseleave", function() {
        var profile_image_container  = $(this).find('img.profile-image');
        var profile_image1 = profile_image_container.data("image");
        profile_image_container.attr("src",profile_image1)
    
    });
    
    //Team Modal
    $('.profile-container').click(function() {
	    var data_modal = $(this).data('modal'); 
	    console.log(data_modal);
	    $('#'+data_modal).fadeIn();
	    $('.modal-overlay').fadeIn();
	    $('body').addClass('modal-active');
    });
    $('.modal-overlay').click(function() {
	    $(this).hide();
	    closeProfileModal();
    });
    $('.close-modal').click(function() {
	    $('.modal-overlay').hide();
	    closeProfileModal();
    });
    
    getAllBlogsYear();
    showBlogFilterSelectorYear();
    showBlogFilterSelectorMonth();
    selectBlogFilterOptionsYear();
    blogPostFixedHeight();
    blogPostHolderItemFixedHeight();
    contentModuleHeightFixedHeight();
    
    quickLinksFilter();
});

$(window).resize(function() {
    blogPostFixedHeight();
    blogPostHolderItemFixedHeight();
    contentModuleHeightFixedHeight();
});

//Resources Filter
function filterResults(selected_resources) {
    var resources = $('.filtered_items-wrapper .filtered-resources');
    var modules   = $('.filtered_items-wrapper .filtered-sub-items');

    if(selected_resources.length < 1) {
        resources.each(function () {
            $(this).fadeIn();
        });
        modules.each(function() {
	       $(this).hide();
	       $(this).removeClass('active_resources'); 
        });
    } else if (selected_resources.length == 1) {
        modules.each(function () {
            $(this).hide();
        });
        resources.each(function () {
            $(this).hide();
            $(this).removeClass('active_resources');
            if ($(this).data('resources') == selected_resources[0]) {
                $(this).addClass('active_resources');
                $(this).fadeIn();
            } else {
                $(this).hide();
                $(this).removeClass('active_resources');
            }
        });
    } else {
        resources.each(function () {
            $(this).hide();
        });
        modules.each(function () {
            $(this).hide();
            $(this).removeClass('active_resources');
            if ($(this).data('resources') == selected_resources[0] &&  $(this).data('module') ==  selected_resources[1]) {
                $(this).addClass('active_resources');
                $(this).fadeIn();
            } else {
                $(this).hide();
                $(this).removeClass('active_resources');
            }
        });
    }
}

//Tab
function tabItem(data) {
    $('.tabs .tab-item').each(function(){
        var itemdata = $(this).data('item');
        if(itemdata == data) {
            $(this).fadeIn();
        }else{
            $(this).hide();
        }
    });
}

function blogPostFixedHeight() {
    var title_maxHeight = -1;
    var post_maxHeight = -1;
    var width = $(window).width();

    var title_elemHeights = $('.Blog .section-wrapper .vertical .unit .blog-content .blog-title').map(function () {
        return $(this).height();
    }).get();

    var post_elemHeights =  $('.Blog .section-wrapper .vertical .unit .blog-content .blog-post-content p').map(function () {
        return $(this).height();
    }).get();


    var title_maxHeight = Math.max.apply(null, title_elemHeights);
    $('.Blog .section-wrapper .vertical .unit').each(function() {
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
    $('.Blog .section-wrapper .vertical .unit').each(function() {
        var post_elemHeight = ($(this).find('.blog-post-content p'));
        if (width > 920) {
            if (post_elemHeight.height() < post_maxHeight) {
                post_elemHeight.height(post_maxHeight);
            }
        }else{
            post_elemHeight.css('height','auto');
        }
    });
}

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
    $('.Page-Blog  .unit').each(function() {
        var post_elemHeight = ($(this).find('.blog-content p'));
        if (width > 920) {
            if (post_elemHeight.height() < post_maxHeight) {
                post_elemHeight.height(post_maxHeight);
            }
        }else{
            post_elemHeight.css('height','auto');
        }
    });
}

function contentModuleHeightFixedHeight() {
    var title_maxHeight = -1;
    var post_maxHeight = -1;
    var width = $(window).width();

    var title_elemHeights = $('.IconBox .block-content h2').map(function () {
        return $(this).height();
    }).get();

    var post_elemHeights =  $('.IconBox .block-content p').map(function () {
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

    var post_maxHeight = Math.max.apply(null, post_elemHeights);
    $('.IconBox .badge-margin').each(function() {
        var post_elemHeight = ($(this).find('.block-content p'));
        if (width > 920) {
            if (post_elemHeight.height() < post_maxHeight) {
                post_elemHeight.height(post_maxHeight);
            }
        }else{
            post_elemHeight.css('height','auto');
        }
    });
}

//Modal Function
function closeProfileModal() {
	$('body').removeClass('modal-active');
    $('.Team .team-modal').each(function (){
	     $(this).hide();
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
//Quick Links Filter 
function quickLinksFilter() {
	var url          = window.location.href;
	var hash_val     = url.split("=")[1];
	var splitHash_val, niceHash_val;
	
	if(hash_val) {
		splitHash_val = hash_val.split("_");
		niceHash_val = splitHash_val[0] + " " + splitHash_val[1];
		$('#resources_filter .btn-text').text(niceHash_val);
		$('#moduletype_filter').fadeIn();
		
		$('.filtered_items-wrapper .filtered-resources').each(function() {
			$(this).hide();
			if($(this).data('resources') == niceHash_val){
				$(this).fadeIn();
				selected_resources.push(niceHash_val);
			}
		});
		
		$('#moduletype_filter .selector-filter').each(function() {
			if($(this).data('resources') == niceHash_val) {
				$(this).addClass('active-selector');
			}
		});
	}
}

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