<script type="text/javascript">
  function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

var productId = getParameterByName("product_id");

  var region1color = "";
  var region2color = "";
  var region3Color = "";
  var region4color = "";
  var region5color = "";
</script>
<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
<!--           <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php if ($site_key) { ?>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                    </div>
                  </div>
                <?php } ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div> -->
        </div>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">

          <h3><?php echo $heading_title; ?></h3>
          <ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
<!--             <li><?php echo $text_model; ?> <?php echo $model; ?></li> -->
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $stock; ?></li>
          </ul>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h4><?php echo $price; ?></h4>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><?php echo $special; ?></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>          
          <?php
            if($customizable==1){
              $region1Color;
              $region2Color;
              $region3Color;
              $region4Color;
              $region5Color;
                for ($x = 0; $x < $region; $x++) {
                    if($x == 0){
                      $cutomregioncolor = explode(",", $region1);
                      echo '<div>'.$region1_name;
                      echo '<ul class="customPallette">';
                      for($y = 0; $y < count($cutomregioncolor); $y++){
                        $z = $y;
                        echo '<li id="'.$z.'" region="1" color="'.$cutomregioncolor[$y].'" onclick="customshowhide($(this));" style="height:25px;width:25px;display:inline-block;float:left;margin:5px;cursor:pointer;background-color:#'.$cutomregioncolor[$y].';"></li>';
                      }
                      echo '</ul></div>';
                    }

                    if($x == 1){
                      $cutomregioncolor = explode(",", $region2);
                      echo '<div>'.$region2_name;
                      echo '<ul class="customPallette">';
                      for($y = 0; $y < count($cutomregioncolor); $y++){
                        $z = $y;
                        echo '<li id="'.$z.'" region="2" color="'.$cutomregioncolor[$y].'" onclick="customshowhide($(this));" style="height:25px;width:25px;display:inline-block;float:left;margin:5px;cursor:pointer;background-color:#'.$cutomregioncolor[$y].';"></li>';
                      }
                      echo '</ul></div>';
                    }

                    if($x == 2){
                      $cutomregioncolor = explode(",", $region3);
                      echo '<div>'.$region3_name;
                      echo '<ul class="customPallette">';
                      for($y = 0; $y < count($cutomregioncolor); $y++){
                        $z = $y;
                        echo '<li id="'.$z.'" region="3" color="'.$cutomregioncolor[$y].'" onclick="customshowhide($(this));" style="height:25px;width:25px;display:inline-block;float:left;margin:5px;cursor:pointer;background-color:#'.$cutomregioncolor[$y].';"></li>';
                      }
                      echo '</ul></div>';
                    }


                    if($x == 3){
                    $cutomregioncolor = explode(",", $region4);
                      echo '<div>'.$region4_name;
                      echo '<ul class="customPallette">';
                      for($y = 0; $y < count($cutomregioncolor); $y++){
                        $z = $y;
                        echo '<li id="'.$z.'" region="4" style="display:inline-block;float:left;">
                                <img src="'.$cutomregioncolor[$y].'" width="70px"/>
                              </li>';
                      }
                      echo '</ul></div><br/><br/>';
                    }

                    if($x == 4){
                       $cutomregioncolor = explode(",", $region5);
                      echo '<div>'.$region5_name;
                      echo '<ul class="customPallette">';
                      for($y = 0; $y < count($cutomregioncolor); $y++){
                        $z = $y;
                        echo '<li id="'.$z.'" region="4" style="display:inline-block;float:left;">
                                <img src="'.$cutomregioncolor[$y].'" width="70px"/>
                              </li>';
                      }
                      echo '</ul></div<br/><br/><br/><br/>';
                    }

                     if($x == 5){
                       $cutomregioncolor = explode(",", $region6);
                      echo '<div>'.$region6_name;
                      echo '<ul class="customPallette">';
                      for($y = 0; $y < count($cutomregioncolor); $y++){
                        $z = $y;
                        echo '<li id="'.$z.'" region="4" style="display:inline-block;float:left;">
                                <img src="'.$cutomregioncolor[$y].'" width="70px"/>
                              </li>';
                      }
                      echo '</ul></div<br/><br/><br/><br/>';
                    }

                     if($x == 6){
                       $cutomregioncolor = explode(",", $region7);
                      echo '<div>'.$region7_name;
                      echo '<ul class="customPallette">';
                      for($y = 0; $y < count($cutomregioncolor); $y++){
                        $z = $y;
                        echo '<li id="'.$z.'" region="4" style="display:inline-block;float:left;">
                                <img src="'.$cutomregioncolor[$y].'" width="70px"/>
                              </li>';
                      }
                      echo '</ul></div<br/><br/><br/><br/>';
                    }
                } 
            }

           ?>
           <div id="sizeChart">


            </div>
          <div id="product">
            <?php if ($options) { ?>
            <h3 style="display:none;"><?php echo $text_option; ?></h3>
           <!-- <a id="sizeChartbutton" href="#">Size Chart</a> -->
     <a data-toggle="modal" data-target="#myModal" style="cursor:pointer;">Size Chart</a>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label style="display:none;" class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
               <!--  <option value=""><?php echo $text_select; ?></option> -->
               <option value=""><?php echo $option['name']; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div style="display:none;" class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" style="display:none;" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" style="display:none;" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            <button type="button" class="btn btn-wishlist btn-lg btn-block" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></button>
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
                      <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php if ($site_key) { ?>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                    </div>
                  </div>
                <?php } ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr>
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
            <!-- AddThis Button END -->
          </div>
          <?php } ?>
        </div>
      </div>
      <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </div>
            <div class="button-group">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              
            </div>
          </div>
        </div>
        <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif ($i % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
  $.ajax({
    url: 'index.php?route=product/product/getRecurringDescription',
    type: 'post',
    data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
    dataType: 'json',
    beforeSend: function() {
      $('#recurring-description').html('');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();

      if (json['success']) {
        $('#recurring-description').html(json['success']);
      }
    }
  });
});
  $( "#combo-section").insertAfter(".thumbnails" ) ;
  $(".btn-look").insertAfter(".btn-wishlist");
  $("#sizeChart").dialog({
    autoOpen: false,
    modal: true,
    width: 600,
    height:400
  });    
  $('#sizeChartbutton').click(function(e){
    e.preventDefault();
    $('#sizeChart').dialog('open');
  });


//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
    dataType: 'json',
    beforeSend: function() {
      $('#button-cart').button('loading');
    },
    complete: function() {
      $('#button-cart').button('reset');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();
      $('.form-group').removeClass('has-error');

      if (json['error']) {
        if (json['error']['option']) {
          for (i in json['error']['option']) {
            var element = $('#input-option' + i.replace('_', '-'));

            if (element.parent().hasClass('input-group')) {
              element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            } else {
              element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            }
          }
        }

        if (json['error']['recurring']) {
          $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
        }

        // Highlight any found errors
        $('.text-danger').parent().addClass('has-error');
      }

      if (json['success']) {
        $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

        $('#cart > button').html(json['total']);

        $('html, body').animate({ scrollTop: 0 }, 'slow');

        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    }
  });
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
  pickTime: false
});

$('.datetime').datetimepicker({
  pickDate: true,
  pickTime: true
});

$('.time').datetimepicker({
  pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
  var node = this;

  $('#form-upload').remove();

  $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

  $('#form-upload input[name=\'file\']').trigger('click');

  if (typeof timer != 'undefined') {
      clearInterval(timer);
  }

  timer = setInterval(function() {
    if ($('#form-upload input[name=\'file\']').val() != '') {
      clearInterval(timer);

      $.ajax({
        url: 'index.php?route=tool/upload',
        type: 'post',
        dataType: 'json',
        data: new FormData($('#form-upload')[0]),
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function() {
          $(node).button('loading');
        },
        complete: function() {
          $(node).button('reset');
        },
        success: function(json) {
          $('.text-danger').remove();

          if (json['error']) {
            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
          }

          if (json['success']) {
            alert(json['success']);

            $(node).parent().find('input').attr('value', json['code']);
          }
        },
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
      });
    }
  }, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : ''),
    beforeSend: function() {
      $('#button-review').button('loading');
    },
    complete: function() {
      $('#button-review').button('reset');
    },
    success: function(json) {
      $('.alert-success, .alert-danger').remove();

      if (json['error']) {
        $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }

      if (json['success']) {
        $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').prop('checked', false);
      }
    }
  });
});

$(document).ready(function() {
  $('.thumbnails').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});
  $('#combo-section').on('hidden.bs.modal', function (e) {    
        window.location.reload(true);
    });
var textareaforcolor = $('textarea')[0];
$(textareaforcolor).val("");

function setcolorintextarea(){
$(textareaforcolor).val("");
var myvalue = "Color 1: "+region1color+"\n Color 2: "+region2color+"\n Color 3: "+region2color+"\n Color 4: "+region4color+"\n Color 5: "+region5color;
$(textareaforcolor).val(myvalue);
}

function customshowhide(element){
  var region = $(element).attr("region");
  var color = $(element).attr("color");
  var  id = $(element).attr("id");
  console.log(region+" "+color+" "+ id);
  region1color = color;
  //$(".region1").hide();
  $(".region2").hide();
  $(".region3").hide();
  $(".region4").hide();
  $(".region5").hide();
  
  $(".region2_title").hide();
  $(".region3_title").hide();
  $(".region4_title").hide();
  $(".region5_title").hide();
if($(".region2_"+id).length > 0){
  $(".region2_"+id).show();
  $(".region2_title").show();
}else{
  $(".region2_title").hide();
}
  
  //   if(color==0){
  //   color = "black";
  // }
setcolorintextarea();
  $(".MagicZoomPlus img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region1color+".jpg");
   $(".MagicZoomPlus img").css("width","392px");
//   $(".MagicZoomPlus img").css("width","163px");
  $(".MagicZoomBigImageCont div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region1color+".jpg");
  $(".MagicThumb-expanded div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region1color+".jpg");
  $(".MagicZoomBigImageCont div:not([class]) img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region1color+".jpg");

  // $('.region1').hide();
  // $('.region'+regionNumber+'_'+className).show();
}

function customshowhide1(element){
  var region = $(element).attr("region");
  var color = $(element).attr("color");
  var  id = $(element).attr("id");
  console.log(region+" "+color+" "+ id);
//alert(region1color);
  var newclass = "region1_"+id;
    region2color = color;
  $(".region3").hide();
  $(".region4").hide();
  $(".region5").hide();

 $(".region3_title").hide();
  $(".region4_title").hide();
  $(".region5_title").hide();

  if($(".region3_"+id).length > 0){
    $(".region3_"+id).show();
    $(".region3_title").show();
  }else{
    $(".region3_title").hide();
  }
  
  //   if(color==0){
  //   color = "black";
  // }
setcolorintextarea();
  $(".MagicZoomPlus img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+".jpg");
   $(".MagicZoomPlus img").css("width","392px");
 //  $(".MagicZoomPlus img").css("width","163px");
  $(".MagicZoomBigImageCont div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+".jpg");
  $(".MagicThumb-expanded div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+".jpg");
  $(".MagicZoomBigImageCont div:not([class]) img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+".jpg");
}
function customshowhide2(element){
  var region = $(element).attr("region");
  var color = $(element).attr("color");
  var  id = $(element).attr("id");
  console.log(region+" "+color+" "+ id);
//alert(region1color);
  var newclass = "region1_"+id;
    region3color = color;
    $(".region4").hide();
    $(".region5").hide();

$(".region4_title").hide();
  $(".region5_title").hide();

  if($(".region4_"+id).length > 0){
    $(".region4_"+id).show();
    $(".region4_title").show();
  }else{
    $(".region4_title").hide();
  }
  setcolorintextarea();
  $(".MagicZoomPlus img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+".jpg");
  $(".MagicZoomPlus img").css("width","392px");
  $(".MagicZoomBigImageCont div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+".jpg");
  $(".MagicThumb-expanded div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+".jpg");
  $(".MagicZoomBigImageCont div:not([class]) img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+".jpg");
}
function customshowhide3(element){
  var region = $(element).attr("region");
  var color = $(element).attr("color");
  var  id = $(element).attr("id");
  console.log(region+" "+color+" "+ id);
//alert(region1color);
  var newclass = "region1_"+id;
    region4color = color;
  

if($(".region5_"+id).length > 0){
    $(".region5_"+id).show();
    $(".region5_title").show();
  }else{
    $(".region5_title").hide();
  }
  setcolorintextarea();
  $(".MagicZoomPlus img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+"_"+region4color+".jpg");
   $(".MagicZoomPlus img").css("width","392px");
  // $(".MagicZoomPlus img").css("width","163px");
  $(".MagicZoomBigImageCont div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+"_"+region4color+".jpg");
  $(".MagicThumb-expanded div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+"_"+region4color+".jpg");
  $(".MagicZoomBigImageCont div:not([class]) img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+"_"+region4color+".jpg");
}

function customshowhide4(element){
  var region = $(element).attr("region");
  var color = $(element).attr("color");
  var  id = $(element).attr("id");
  console.log(region+" "+color+" "+ id);
//alert(region1color);
  var newclass = "region1_"+id;
    region5color = color;
 setcolorintextarea();
  $(".MagicZoomPlus img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+"_"+region4color+"_"+region5color+".jpg");
   $(".MagicZoomPlus img").css("width","392px");
 //  $(".MagicZoomPlus img").css("width","163px");
  $(".MagicZoomBigImageCont div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+"_"+region4color+"_"+region5color+".jpg");
  $(".MagicThumb-expanded div img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+"_"+region4color+"_"+region5color+".jpg");
$(".MagicZoomBigImageCont div:not([class]) img").attr("src","image/custom/"+productId+"/"+region1color+"_"+region2color+"_"+region3color+"_"+region4color+"_"+region5color+".jpg");
}

$(".region2_title").hide();
$(".region3_title").hide();
  $(".region4_title").hide();
  $(".region5_title").hide();
//--></script>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Size Chart</h4> 
        <div class="sizeSelectorsPopUp" style="text-align:center;">
<input type="radio" name="size" class="button1" checked="checked"> Size in Inches  <input type="radio" name="size" class="button2"> Size in Centimeter
      </div>
      </div>
      <div class="modal-body">
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default size1">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Anarkali
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
       <table class="table table-striped sizeChartTable">
  <tbody><tr class="mainSizes">
    <th></th>
    <th>2</th>
    <th>4</th>
    <th>6</th>
    <th>8</th>
    <th>10</th>
    <th>12</th>
    <th>14</th>
    <th>Custom&nbsp;&nbsp;&nbsp;</th>
  </tr>
  <tr class="style">
    <th class="style2">Bust</th>
    <td>33.5</td>
    <td>34.5</td>
    <td>35.5</td>
    <td>36.5</td>
    <td>38.5</td>
    <td>39.5</td>
    <td>42.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Waist</th>
    <td>26.0</td>
    <td>27.0</td>
    <td>28.0</td>
    <td>29.0</td>
    <td>30.5</td>
    <td>32.0</td>
    <td>34.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Low waist</th>
    <td>30.0</td>
    <td>31.0</td>
    <td>32.0</td>
    <td>33.0</td>
    <td>34.5</td>
    <td>36.0</td>
    <td>38.5</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Hip</th>
    <td>36.0</td>
    <td>37.0</td>
    <td>38.0</td>
    <td>39.0</td>
    <td>40.5</td>
    <td>42.0</td>
    <td>44.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Shoulder</th>
    <td>13.5</td>
    <td>14.0</td>
    <td>14.5</td>
    <td>15.0</td>
    <td>15.5</td>
    <td>16.0</td>
    <td>16.5</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Regular length</th>
    <td>45.0</td>
    <td>45.0</td>
    <td>45.0</td>
    <td>45.0</td>
    <td>45.0</td>
    <td>45.0</td>
    <td>45.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Floor length</th>
    <td>54.0</td>
    <td>54.0</td>
    <td>54.0</td>
    <td>54.0</td>
    <td>54.0</td>
    <td>54.0</td>
    <td>54.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
</tbody></table>
      </div>
    </div>
  </div>
  <div class="panel panel-default size1">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Lehenga
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        <table class="table table-striped sizeChartTable">
  <tbody><tr class="mainSizes">
    <th></th>
    <th>2</th>
    <th>4</th>
    <th>6</th>
    <th>8</th>
    <th>10</th>
    <th>12</th>
    <th>14</th>
    <th>Custom&nbsp;&nbsp;&nbsp;</th>
  </tr>
  <tr class="style">
    <th class="style2">Waist</th>
    <td>26.0</td>
    <td>27.0</td>
    <td>28.0</td>
    <td>29.0</td>
    <td>30.5</td>
    <td>32.0</td>
    <td>34.0</td>
  <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Hip</th>
    <td>36.0</td>
    <td>37.0</td>
    <td>38.0</td>
    <td>39.0</td>
    <td>40.5</td>
    <td>42.0</td>
    <td>44.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Regular length</th>
    <td>42.0</td>
    <td>42.0</td>
    <td>42.0</td>
    <td>43.0</td>
    <td>43.0</td>
    <td>43.0</td>
    <td>43.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
</tbody></table>
      </div>
    </div>
  </div>
  <div class="panel panel-default size1">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Blouse
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <table class="table table-striped sizeChartTable">
<tbody><tr class="mainSizes">
    <th></th>
    <th>2</th>
    <th>4</th>
    <th>6</th>
    <th>8</th>
    <th>10</th>
    <th>12</th>
    <th>14</th>
    <th>Custom&nbsp;&nbsp;&nbsp;</th>
  </tr>
  <tr class="style">
    <th class="style2">Bust</th>
    <td>33.5</td>
    <td>34.5</td>
    <td>35.5</td>
    <td>36.5</td>
    <td>38.5</td>
    <td>39.5</td>
    <td>42</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Bicep round</th>
    <td>12.0</td>
    <td>12.0</td>
    <td>12.0</td>
    <td>12.5</td>
    <td>12.5</td>
    <td>12.5</td>
    <td>13.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Waist</th>
    <td>26.0</td>
    <td>27.0</td>
    <td>28.0</td>
    <td>29.0</td>
    <td>30.5</td>
    <td>32.0</td>
    <td>34.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Shoulder</th>
    <td>13.5</td>
    <td>14.0</td>
    <td>14.5</td>
    <td>15.0</td>
    <td>15.5</td>
    <td>16.0</td>
    <td>16.5</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Front neck depth</th>
    <td>7.0</td>
    <td>7.0</td>
    <td>7.0</td>
    <td>7.0</td>
    <td>7.0</td>
    <td>7.0</td>
    <td>7.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Back neck depth</th>
    <td>10.0</td>
    <td>10.0</td>
    <td>10.0</td>
    <td>10.0</td>
    <td>10.0</td>
    <td>10.0</td>
    <td>10.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Blouse length</th>
    <td>14.0</td>
    <td>14.0</td>
    <td>14.0</td>
    <td>14.0</td>
    <td>14.0</td>
    <td>14.0</td>
    <td>14.0</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  </tbody></table>
      </div>
    </div>
  </div>
<div class="panel panel-default size2" style="display:none;">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="true" aria-controls="collapse4">
          Anarkali
        </a>
      </h4>
    </div>
    <div id="collapse4" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
       <table class="table table-striped sizeChartTable">
    <tbody>
<tbody><tr class="mainSizes">
    <th></th>
    <th>2</th>
    <th>4</th>
    <th>6</th>
    <th>8</th>
    <th>10</th>
    <th>12</th>
    <th>14</th>
    <th>Custom&nbsp;&nbsp;&nbsp;</th>
  </tr>
  <tr class="style">
    <th class="style2">Bust</th>
    <td>85.09</td>
    <td>87.63</td>
    <td>90.17</td>
    <td>92.71</td>
    <td>96.52</td>
    <td>100.33</td>
    <td>106.68</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  
  <tr class="style">
    <th class="style2">Waist</th>
    <td>66.04</td>
    <td>68.58</td>
    <td>71.12</td>
    <td>73.66</td>
    <td>77.47</td>
    <td>81.28</td>
    <td>86.36</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Low waist</th>
    <td>76.2</td>
    <td>78.74</td>
    <td>81.28</td>
    <td>83.82</td>
    <td>87.63</td>
    <td>91.44</td>
    <td>97.79</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Hip</th>
    <td>91.44</td>
    <td>93.98</td>
    <td>96.52</td>
    <td>99.06</td>
    <td>102.87</td>
    <td>106.68</td>
    <td>111.76</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Shoulder</th>
    <td>34.29</td>      
    <td>35.56</td>
    <td>36.83</td>
    <td>38.1</td>
    <td>39.37</td>
    <td>40.64</td>
    <td>41.91</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Regular length</th>
    <td>114.3</td>
    <td>114.3</td>
    <td>114.3</td>
    <td>114.3</td>
    <td>114.3</td>
    <td>114.3</td>
    <td>114.3</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Floor length</th>
    <td>137.16</td>
    <td>137.16</td>
    <td>137.16</td>
    <td>137.16</td>
    <td>137.16</td>
    <td>137.16</td>
    <td>137.16</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
</tbody></table>

      </div>
    </div>
  </div>
<div class="panel panel-default size2" style="display:none;">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
          Lehenga
        </a>
      </h4>
    </div>
    <div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <table class="table table-striped sizeChartTable">
<tbody><tr class="mainSizes">
    <th></th>
    <th>2</th>
    <th>4</th>
    <th>6</th>
    <th>8</th>
    <th>10</th>
    <th>12</th>
    <th>14</th>
    <th>Custom&nbsp;&nbsp;&nbsp;</th>
  </tr>
  <tr class="style">
    <th class="style2">Waist</th>
    <td>66.04</td>          
    <td>68.58</td>
    <td>71.12</td>
    <td>73.66</td>
    <td>77.47</td>
    <td>81.28</td>
    <td>86.36</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Hip</th>
    <td>91.44</td>
    <td>93.98</td>          
    <td>96.52</td>
    <td>99.06 </td>
    <td>102.87</td>
    <td>106.68</td>
    <td>111.76</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Regular length</th>
    <td>106.68  </td>
    <td>106.68  </td>       
    <td>106.68  </td>
    <td>109.22</td>
    <td>109.22</td>
    <td>109.22</td>
    <td>109.22</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  </tbody></table>
      </div>
    </div>
  </div>

<div class="panel panel-default size2" style="display:none;">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
          Blouse
        </a>
      </h4>
    </div>
    <div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <table class="table table-striped sizeChartTable">
<tbody><tr class="mainSizes">
    <th></th>
    <th>2</th>
    <th>4</th>
    <th>6</th>
    <th>8</th>
    <th>10</th>
    <th>12</th>
    <th>14</th>
    <th>Custom&nbsp;&nbsp;&nbsp;</th>
  </tr>
  <tr class="style">          

    <th class="style2">Bust</th>
    <td>85.09</td>
    <td>87.63</td>
    <td>90.17</td>
    <td>92.71</td>
    <td>96.52</td>
    <td>100.33</td>
    <td>106.68</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Bicep round</th>         

    <td>30.48</td>
    <td>30.48</td>
    <td>30.48</td>
    <td>31.75</td>
    <td>31.75</td>
    <td>31.75</td>
    <td>33.02</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Waist</th>           

    <td>66.04</td>
    <td>68.58</td>
    <td>71.12</td>
    <td>73.66</td>
    <td>77.47</td>
    <td>81.28</td>
    <td>86.36</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Shoulder</th>
    <td>34.29</td>
    <td>35.56</td>
    <td>36.83</td>            
    <td>38.1</td>
    <td>39.37</td>
    <td>40.64</td>
    <td>41.91</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Front neck depth</th>
    <td>17.78</td>
    <td>17.78</td>
    <td>17.78</td>
    <td>17.78</td>
    <td>17.78</td>
    <td>17.78</td>
    <td>17.78</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Back neck depth</th>
    <td>25.4</td>
    <td>25.4</td>
    <td>25.4</td>
    <td>25.4</td>
    <td>25.4</td>
    <td>25.4</td>
    <td>25.4</td>
    <td><input type="text" class="sizeChart"/></td>
  </tr>
  <tr class="style">
    <th class="style2">Blouse length</th>
    <td>35.56</td>
    <td>35.56</td>    
    <td>35.56</td>
    <td>35.56</td>
    <td>35.56</td>
    <td>35.56</td>
      <td>35.56</td>
      <td><input type="text" class="sizeChart"/></td>
  </tr>
  </tbody></table>
      </div>

    </div>
  </div>
</div>
<button type="button" class="btn btn-primary" data-dismiss="modal">Save Custom Size</button>
      </div>
      <div class="modal-footer" style="text-align:justify;">Note: The sizes mentioned are body measurements. All garments will be made with adequate loosing to ensure a comfortable fit. Please enter your body measurements while entering custom sizes.</div>
    </div>
  </div>
</div>

<?php echo $footer; ?>

<script type="text/javascript">
  var sizein = "";
   var textareaforsize  = $("textarea")[1];
  $(textareaforsize).val("");
  $(".style td input").change(function(){
    if($(".button2:checked").length == 0){
      sizein = " Inches";
    }else{
      sizein =" Centimeter";
    }
    $("textarea").val("");
    var alldom =  $(this).parent().parent().parent().children("tr");
    var finalvalue= ""
    for (var j=0; j < alldom.length; j++) {
      var alltd = $(alldom[j]).children("td");
      for (var k=7; k <alltd.length; k++) {
          finalvalue=finalvalue+$(alltd[7]).parent().children(".style2").text()+" "+$(alltd[7]).children("input").val()+" in "+sizein+"\n";
      };
      
    };
    $(textareaforsize).val(finalvalue)

  });
</script>
<script type="text/javascript">
$( "select" ).change(function () {
    if(($.trim($("select option:selected").text())) == "Custom")   
    { 
      $('#myModal').modal('show');
    }
  });
</script>
