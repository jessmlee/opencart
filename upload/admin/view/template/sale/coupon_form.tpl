<?php echo $header; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-error"><i class="icon-exclamation-sign"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="box">
    <div class="box-heading">
      <h1><i class="icon-edit"></i> <?php echo $heading_title; ?></h1>
    </div>
    <div class="box-content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <div class="buttons">
          <button type="submit" class="btn"><i class="icon-ok"></i> <?php echo $button_save; ?></button>
          <a href="<?php echo $cancel; ?>" class="btn"><i class="icon-remove"></i> <?php echo $button_cancel; ?></a></div>
        <ul class="nav nav-tabs">
          <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
          <?php if ($coupon_id) { ?>
          <li><a href="#tab-history" data-toggle="tab"><?php echo $tab_history; ?></a></li>
          <?php } ?>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="tab-general">
            <div class="control-group">
              <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_name; ?></label>
              <div class="controls">
                <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" />
                <?php if ($error_name) { ?>
                <span class="error"><?php echo $error_name; ?></span>
                <?php } ?>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-code"><span class="required">*</span> <?php echo $entry_code; ?></label>
              <div class="controls">
                <input type="text" name="code" value="<?php echo $code; ?>" placeholder="<?php echo $entry_code; ?>" id="input-code" />
                <a data-toggle="tooltip" title="<?php echo $help_code; ?>"><i class="icon-question-sign icon-large"></i></a>
                <?php if ($error_code) { ?>
                <span class="error"><?php echo $error_code; ?></span>
                <?php } ?>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-type"><?php echo $entry_type; ?></label>
              <div class="controls">
                <select name="type" id="input-type">
                  <?php if ($type == 'P') { ?>
                  <option value="P" selected="selected"><?php echo $text_percent; ?></option>
                  <?php } else { ?>
                  <option value="P"><?php echo $text_percent; ?></option>
                  <?php } ?>
                  <?php if ($type == 'F') { ?>
                  <option value="F" selected="selected"><?php echo $text_amount; ?></option>
                  <?php } else { ?>
                  <option value="F"><?php echo $text_amount; ?></option>
                  <?php } ?>
                </select>
                <a data-toggle="tooltip" title="<?php echo $help_type; ?>"><i class="icon-question-sign icon-large"></i></a> </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-discount"><?php echo $entry_discount; ?></label>
              <div class="controls">
                <input type="text" name="discount" value="<?php echo $discount; ?>" placeholder="<?php echo $entry_discount; ?>" id="input-discount" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-total"><?php echo $entry_total; ?></label>
              <div class="controls">
                <input type="text" name="total" value="<?php echo $total; ?>" placeholder="<?php echo $entry_total; ?>" id="input-total" />
                <a data-toggle="tooltip" title="<?php echo $help_total; ?>"><i class="icon-question-sign icon-large"></i></a> </div>
            </div>
            <div class="control-group">
              <div class="control-label"><?php echo $entry_logged; ?></div>
              <div class="controls">
                <label class="radio inline">
                  <?php if ($logged) { ?>
                  <input type="radio" name="logged" value="1" checked="checked" />
                  <?php echo $text_yes; ?>
                  <?php } else { ?>
                  <input type="radio" name="logged" value="1" />
                  <?php echo $text_yes; ?>
                  <?php } ?>
                </label>
                <label class="radio inline">
                  <?php if (!$logged) { ?>
                  <input type="radio" name="logged" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="logged" value="0" />
                  <?php echo $text_no; ?>
                  <?php } ?>
                </label>
                <a data-toggle="tooltip" title="<?php echo $help_logged; ?>"><i class="icon-question-sign icon-large"></i></a> </div>
            </div>
            <div class="control-group">
              <div class="control-label"><?php echo $entry_shipping; ?></div>
              <div class="controls">
                <label class="radio inline">
                  <?php if ($shipping) { ?>
                  <input type="radio" name="shipping" value="1" checked="checked" />
                  <?php echo $text_yes; ?>
                  <?php } else { ?>
                  <input type="radio" name="shipping" value="1" />
                  <?php echo $text_yes; ?>
                  <?php } ?>
                </label>
                <label class="radio inline">
                  <?php if (!$shipping) { ?>
                  <input type="radio" name="shipping" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="shipping" value="0" />
                  <?php echo $text_no; ?>
                  <?php } ?>
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-product"><?php echo $entry_product; ?></label>
              <div class="controls">
                <input type="text" name="product" value="" placeholder="<?php echo $entry_product; ?>" id="input-product" data-toggle="dropdown" data-target="#autocomplete-product" autocomplete="off" />
                <a data-toggle="tooltip" title="<?php echo $help_product; ?>"><i class="icon-question-sign icon-large"></i></a>
                <div id="autocomplete-product" class="dropdown">
                  <ul class="dropdown-menu">
                    <li class="disabled"><a href="#"><i class="icon-spinner icon-spin"></i> <?php echo $text_loading; ?></a></li>
                  </ul>
                </div>
                <br />
                <div id="coupon-product" class="well well-small scrollbox">
                  <?php foreach ($coupon_product as $coupon_product) { ?>
                  <div id="coupon-product<?php echo $coupon_product['product_id']; ?>"><i class="icon-minus-sign"></i> <?php echo $coupon_product['name']; ?>
                    <input type="hidden" name="coupon_product[]" value="<?php echo $coupon_product['product_id']; ?>" />
                  </div>
                  <?php } ?>
                </div>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-category"><?php echo $entry_category; ?></label>
              <div class="controls">
                <input type="text" name="category" value="" placeholder="<?php echo $entry_category; ?>" id="input-category" data-toggle="dropdown" data-target="#autocomplete-category" autocomplete="off" />
                <a data-toggle="tooltip" title="<?php echo $help_category; ?>"><i class="icon-question-sign icon-large"></i></a>
                <div id="autocomplete-category" class="dropdown">
                  <ul class="dropdown-menu">
                    <li class="disabled"><a href="#"><i class="icon-spinner icon-spin"></i> <?php echo $text_loading; ?></a></li>
                  </ul>
                </div>
                <br />
                <div id="coupon-category" class="well well-small scrollbox">
                  <?php foreach ($coupon_category as $coupon_category) { ?>
                  <div id="coupon-category<?php echo $coupon_category['category_id']; ?>"><i class="icon-minus-sign"></i> <?php echo $coupon_category['name']; ?>
                    <input type="hidden" name="coupon_category[]" value="<?php echo $coupon_category['category_id']; ?>" />
                  </div>
                  <?php } ?>
                </div>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-date-start"><?php echo $entry_date_start; ?></label>
              <div class="controls">
                <input type="date" name="date_start" value="<?php echo $date_start; ?>" placeholder="<?php echo $entry_date_start; ?>" id="input-date-start" class="input-medium" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-date-end"><?php echo $entry_date_end; ?></label>
              <div class="controls">
                <input type="date" name="date_end" value="<?php echo $date_end; ?>" placeholder="<?php echo $entry_date_end; ?>" id="input-date-end" class="input-medium" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-uses-total"><?php echo $entry_uses_total; ?></label>
              <div class="controls">
                <input type="text" name="uses_total" value="<?php echo $uses_total; ?>" placeholder="<?php echo $entry_uses_total; ?>" id="input-uses-total" />
                <a data-toggle="tooltip" title="<?php echo $help_uses_total; ?>"><i class="icon-question-sign icon-large"></i></a> </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-uses-customer"><?php echo $entry_uses_customer; ?></label>
              <div class="controls">
                <input type="text" name="uses_customer" value="<?php echo $uses_customer; ?>" placeholder="<?php echo $entry_uses_customer; ?>" id="input-uses-customer" />
                <a data-toggle="tooltip" title="<?php echo $help_uses_customer; ?>"><i class="icon-question-sign icon-large"></i></a> </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="input-status"><?php echo $entry_status; ?></label>
              <div class="controls">
                <select name="status" id="input-status">
                  <?php if ($status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
          </div>
          <?php if ($coupon_id) { ?>
          <div class="tab-pane" id="tab-history">
            <div id="history"></div>
          </div>
          <?php } ?>
        </div>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
var timer = null;

$('input[name=\'product\']').on('click keyup', function() {
	var input = this;
	
	if (timer != null) {
		clearTimeout(timer);
	}

	timer = setTimeout(function() {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent($(input).val()),
			dataType: 'json',			
			success: function(json) {
				if (json.length) {
					html = '';
					
					for (i = 0; i < json.length; i++) {
						html += '<li data-value="' + json[i]['product_id'] + '"><a href="#">' + json[i]['name'] + '</a></li>';
					}
				} else {
					html = '<li class="disabled"><a href="#"><?php echo $text_none; ?></a></li>';
				}
				
				$($(input).attr('data-target')).find('ul').html(html);
			}
		});
	}, 250);
});

$('#autocomplete-product').delegate('a', 'click', function(e) {
	e.preventDefault();
	
	var value = $(this).parent().attr('data-value');
	
	if (typeof value !== 'undefined') {
		$('#coupon-product' + value).remove();
		
		$('#coupon-product').append('<div id="product-product' + value + '"><i class="icon-minus-sign"></i> ' + $(this).text() + '<input type="hidden" name="coupon_product[]" value="' + value + '" /></div>');
	}
});

$('#coupon-product').delegate('.icon-minus-sign', 'click', function() {
	$(this).parent().remove();
});

// Category
var timer = null;

$('input[name=\'category\']').on('click keyup', function() {
	var input = this;
	
	if (timer != null) {
		clearTimeout(timer);
	}

	timer = setTimeout(function() {
		$.ajax({
			url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent($(input).val()),
			dataType: 'json',			
			success: function(json) {
				if (json.length) {
					html = '';
					
					for (i = 0; i < json.length; i++) {
						html += '<li data-value="' + json[i]['category_id'] + '"><a href="#">' + json[i]['name'] + '</a></li>';
					}
				} else {
					html = '<li class="disabled"><a href="#"><?php echo $text_none; ?></a></li>';
				}
				
				$($(input).attr('data-target')).find('ul').html(html);
			}
		});
	}, 250);
});

$('#autocomplete-category').delegate('a', 'click', function(e) {
	e.preventDefault();
	
	var value = $(this).parent().attr('data-value');
	
	if (typeof value !== 'undefined') {
		$('#coupon-category' + value).remove();
		
		$('#coupon-category').append('<div id="coupon-category' + value + '"><i class="icon-minus-sign"></i> ' + $(this).text() + '<input type="hidden" name="coupon_category[]" value="' + value + '" /></div>');
	}
});

$('#coupon-category').delegate('.icon-minus-sign', 'click', function() {
	$(this).parent().remove();
});
//--></script>
<?php if ($coupon_id) { ?>
<script type="text/javascript"><!--
$('#history .pagination a').on('click', function() {
	$('#history').load(this.href);
	
	return false;
});			

$('#history').load('index.php?route=sale/coupon/history&token=<?php echo $token; ?>&coupon_id=<?php echo $coupon_id; ?>');
//--></script>
<?php } ?>
<?php echo $footer; ?>