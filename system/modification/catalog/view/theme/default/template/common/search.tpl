<div id="search" class="input-group">
  <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control input-lg" />
  <span class="input-group-btn">
    <button type="button" class="btn btn-default btn-lg"><i class="fa fa-search"></i></button>
  </span>
</div>
<script type="text/javascript">
    $.fn.livesearch = function(option) {
        return this.each(function() {
            this.timer = null;
            this.items = new Array();
            this.minLength = 2;

            $.extend(this, option);
    
            $(this).attr('autocomplete', 'off');
            
            // Focus
            $(this).on('focus', function() {
                //this.request();
            });
            
            // Blur
            $(this).on('blur', function() {
                setTimeout(function(object) {
                    object.hide();
                }, 200, this);              
            });
            
            // Keydown
            $(this).on('input', function(event) {
                if (event.keyCode == 27) {
                    this.hide();
                } else if (this.value.length <= this.minLength) {
                    this.hide();
                } else {
                    this.request();
                }
            });
            
            // Show
            this.show = function() {
                var pos = $(this).position();
    
                $(this).siblings('ul.dropdown-menu').css({
                    top: pos.top + $(this).outerHeight(),
                    left: pos.left
                });
    
                $(this).siblings('ul.dropdown-menu').show();
            }
            
            // Hide
            this.hide = function() {
                $(this).siblings('ul.dropdown-menu').hide();
            }       
            
            // Request
            this.request = function() {
                clearTimeout(this.timer);
        
                this.timer = setTimeout(function(object) {
                    object.source($(object).val(), $.proxy(object.response, object));
                }, 200, this);
            }
            
            // Response
            this.response = function(json) {
                html = '';
    
                if (json.length) {
                    for (i = 0; i < json.length; i++) {
                        this.items[json[i]['value']] = json[i];
                    }
    
                    for (i = 0; i < json.length; i++) {
                        if (!json[i]['category']) {
                            html += '<a href="' + json[i]['href'] + '" style="padding:0px 0px 3px 0px">';
                            html += '<li style="height:auto; width:200px; padding: 5px 5px 5px 5px; border-bottom:1px solid #ccc;text-align:center;" data-value="' + json[i]['value'] + '">';
                            html += '<div class="search-thumb" style=""><img src="' + json[i]['image'] + '"/></div>';
                            html += '<div ><div class="search-name" style="text-align:center;font-weight: bold;color:#666;">' + json[i]['label'] + '</div>';
                            html += '<div class="search-price" style="text-align:center;color:#666;">' + json[i]['price'] + '</div></div>';
                            html += '<div style="clear:both;"></div></li>';
                            html += '</a><div style="height:2px;"></div>';
                        }
                    }
                }
    
                if (html) {
                    this.show();
                } else {
                    this.hide();
                }
    
                $(this).siblings('ul.dropdown-menu').html(html);
            }
            
            $(this).after('<ul class="dropdown-menu" style="padding:2px 2px 2px 2px;"></ul>');
            $(this).siblings('ul.dropdown-menu').delegate('a', 'click', $.proxy(this.click, this)); 
            
        });
    };
    
    $('input[name=\'search\']').livesearch({
        'source': function(request, response) {
            $.ajax({
                url: 'index.php?route=common/search/livesearch&filter_name=' +  encodeURIComponent(request),
                dataType: 'json',
                success: function(json) {
                    response($.map(json, function(item) {
                        return {
                            label: item.name,
                            value: item.product_id,
                            image: item.image,
                            price: item.price,
                            href: item.href,
                        }
                    }));
                }
            });
        }
    });
</script>