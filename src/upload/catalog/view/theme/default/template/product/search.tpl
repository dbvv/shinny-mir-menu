<?php echo $header; ?>
<div class="content">
      <div class="box box_breadcrumbs">
        <div class="box__inner">
          <ul class="breadcrumbs">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li class="breadcrumbs__item">
              <a class="breadcrumbs__link" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            </li>
            <?php } ?>
          </ul>
        </div>
      </div>
      
    <div class="box box_stock">
      <div class="box__inner">
        <h2 class="box__title"><?php echo $heading_title; ?></h2>

      <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
      <div class="row">
        <div class="col-sm-12" style="text-align:left">
          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
		  <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="catalogOverload__button" />
        </div>

      </div>
         <div class="box box_catalog">
          <div class="catalog">
                <div class="form catalogFilterSort" style="text-align: right;">
                <?php if ($products) { ?>
                <label class="form__label form__label_select ">
                  <span class="form__caption">Выводить</span>
                  <div class="form__fieldWrapper">
                    <select onchange="location = this.value;">
                    <?php foreach ($sorts2 as $sor) { ?>
                    <?php if ($sor['value'] == $sort . '-' . $order) { ?>
                         <option value="<?php echo $sor['href']; ?>" selected="selected"><?php echo $sor['text']; ?></option>
                    <?php } else { ?>
                         <option value="<?php echo $sor['href']; ?>"><?php echo $sor['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                    </select>
                  </div>
                </label>
                <label class="form__label form__label_select ">
                  <span class="form__caption">Сортировать</span>
                  <div class="form__fieldWrapper">
                    <select onchange="location = this.value;">
                    <?php foreach ($sorts as $sorts) { ?>
                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                         <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                    <?php } else { ?>
                         <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                    </select>
                  </div>
                </label>
              <?php } ?>
              </div>
			  <div class="catalog__column catalog__column_left">
                <?php echo $column_left; ?>
            </div>
            <div class="catalog__column catalog__column_right" style="margin-right: 0">
              <div class="catalogList" id="prod">
                <?php if ($products) { ?>
                <?php foreach ($products as $product) { ?>
                <div class="goodsCard">
                  <div class="goodsCard__section goodsCard__section_left">
                    <div class="goodsCard__photo" style="position: absolute; overflow: hidden;">
                      <img class="zim" src="<?php echo $product['thumb']; ?>" data-zoom-image="<?php echo $product['popup']; ?>" alt="<?php echo $product['name']; ?>">
                    </div>
                    <div class="goodsCard__vendorCode"> Арт. <?php echo $product['sku']; ?> </div>
                  </div>
                  <div class="goodsCard__section goodsCard__section_right">
                    <a href="<?php echo $product['href']; ?>" class="goodsCard__title"><?php echo $product['name']; ?></a>
                    <ul class="goodsCardParameters">
                    <?php foreach ($product['attr'] as $at) { ?>
                    <?php if ($at['text'] == 'Лето') { ?>
                    <li class="goodsCardParameters__item"> <?php echo $at['name'] . ': ' . $at['text']; ?> 
                    <svg class="icon__summer" width="11px" height="11px"><use xlink:href="#summer">
                        <svg id="summer" viewBox="0 0 11 11" width="100%" height="100%">
                            <path fill="#f46404" d="M5.5 11s0-.1 0 0L4 9.5c-.1-.1-.1-.1-.2-.1h-2c-.1 0-.1 0-.1-.1V7.2c0-.1 0-.1-.1-.2L.1 5.5H0s.1 0 .1-.1l1.5-1.5c.1-.1.1-.1.1-.2v-2c0-.1 0-.1.1-.1h2.1c.1 0 .1 0 .2-.1L5.6 0v-.1s0 .1.1.1l1.5 1.5c.1.1.1.1.2.1h2c.1 0 .1 0 .1.1v2.1c0 .1 0 .1.1.2l1.5 1.5h.1s-.1 0-.1.1L9.6 7.1c-.2 0-.2 0-.2.1v2c0 .1 0 .1-.1.1H7.2c-.1 0-.1 0-.2.1-.5.5-.9 1-1.5 1.6zM2.6 5.5c0 1.6 1.3 2.9 2.9 2.9 1.6 0 2.9-1.3 2.9-2.9 0-1.6-1.3-2.9-2.9-2.9-1.6 0-2.9 1.3-2.9 2.9z"></path><path fill="#f46404" d="M5.5 7.4c-1.1 0-1.9-.9-1.9-1.9 0-1.1.9-1.9 1.9-1.9 1.1 0 1.9.9 1.9 1.9 0 1.1-.8 1.9-1.9 1.9z"></path>
                        </svg>
                    </use></svg>
                    </li>
                    <?php } elseif ($at['text'] == 'Зима') { ?>
                    <li class="goodsCardParameters__item"> <?php echo $at['name'] . ': ' . $at['text']; ?> 
                        <svg class="icon__summer" width="11px" height="11px"><use xlink:href="#winter">
                            <svg id="winter" viewBox="0 0 11 12" width="100%" height="100%">
      <path fill="#1d7cc5" d="M5.5 12c-.1-.1-.3-.2-.4-.3-.1 0-.1-.1-.1-.2v-1.4c-.1 0-.1.1-.2.1-.2.1-.4.3-.7.4H4c-.1-.1-.2-.1-.3-.2-.1 0-.1-.1-.1-.1v-.4c0-.1 0-.1.1-.1.3-.2.7-.4 1-.6C5 9 5 9 5 8.8V8c-.4.2-.7.4-1 .6V7.5c-.2.1-.3.1-.5.2-.1.1-.3.2-.5.3-.1 0-.1 0-.1.1v1.3c0 .1 0 .1-.1.1l-.3.3h-.1c-.1-.1-.1-.2-.2-.2s-.1-.1-.1-.2v-.9c-.1.1-.2.1-.2.2l-1.2.6H.5c-.1-.1-.3-.1-.4-.2-.1 0-.1 0-.1-.1v-.5s0-.1.1-.1c.4-.2.9-.5 1.3-.7l.1-.1c-.1 0-.3-.1-.4-.1-.1-.1-.3-.2-.5-.3-.1 0-.1-.1-.1-.1v-.4c0-.1 0-.1.1-.1.1-.1.3-.2.4-.3h.2c.4.3.8.5 1.2.8h.1c.3-.2.6-.3.9-.5-.3-.2-.7-.4-1-.6.3-.2.6-.4.9-.5 0 0-.1 0-.1-.1-.2-.1-.5-.3-.7-.4h-.1c-.5.2-.9.4-1.3.7H.9c-.1-.1-.2-.2-.3-.2v-.6s0-.1.1-.1c.3-.2.6-.3.8-.5-.2 0-.3 0-.4-.1-.3-.2-.7-.4-1-.5-.1-.1-.1-.1-.1-.2V3h.1c.2-.1.3-.1.5-.2h.1c.4.2.8.4 1.3.6 0 0 .1 0 .1.1v-.9c0-.1 0-.1.1-.2s.2-.1.3-.2h.1c.1.1.3.2.4.2v1.7c.3.1.5.3.8.4h.1V3.4c.4.3.7.4 1.1.6V3l-.1-.1c-.4-.2-.7-.4-1.1-.6-.1 0-.1-.1-.1-.2v-.4s0-.1.1-.1c0 0 .1-.1.2-.1h.2c.2.1.5.3.7.4 0 0 .1 0 .1.1V.5c0-.1 0-.1.1-.1.1-.2.2-.3.3-.4h.1c.1.1.2.2.4.2.1.1.1.2.1.3v1.4l.6-.3c.1 0 .3-.1.4-.2h.1c.2.1.3.2.5.2v.5c0 .1 0 .1-.1.1-.5.3-.9.5-1.4.7C6.1 3 6 3 6 3v1c.3-.2.7-.4 1-.6v1.1c.1-.1.2-.1.3-.2.3 0 .5-.1.7-.2.1 0 .1-.1.1-.1V2.6c0-.1 0-.1.1-.1s.2-.1.3-.1c.1 0 .3.1.4.2v1c.1-.2.2-.2.4-.3.4-.2.7-.4 1.1-.6h.1c.1.1.3.2.4.2.1.1.1.1.1.2v.4c0 .1 0 .1-.1.2-.3.2-.7.4-1 .6-.1 0-.2 0-.3.1l.6.3c.1 0 .2.1.2.1v.6s0 .1-.1.1c-.1.1-.3.1-.4.2h-.1c-.3-.3-.7-.5-1.1-.7-.1 0-.1-.1-.2 0-.3.1-.5.3-.8.4l-.1.1c.4.2.7.4 1 .5-.3.2-.6.4-1 .5.1 0 .2.1.3.1.2.2.4.3.6.4h.2c.4-.2.8-.4 1.2-.7h.1c.1.1.2.1.4.2.1 0 .1.1.1.1v.3c0 .1 0 .1-.1.2-.2.1-.5.3-.7.4 0 0 .1 0 .1.1.4.2.8.5 1.2.7V9c0 .1 0 .1-.1.1-.2.1-.3.1-.5.2h-.1c-.5-.2-.9-.5-1.3-.7h-.1v.9s0 .1-.1.1c0 .1-.1.1-.2.2h-.1c-.2-.1-.3-.1-.3-.2V8.2c0-.1 0-.1-.1-.1-.4-.2-.7-.4-1-.6H7v1c-.3-.2-.6-.3-1-.5v1l.1.1 1.2.6c.1 0 .1.1.1.2v.4s0 .1-.1.1h-.1c-.2.2-.4.1-.6 0l-.6-.3v1.4c0 .1 0 .1-.1.2s-.3.2-.4.3zm0-6.8h-.4s-.1 0-.1.1c-.1.2-.2.4-.4.7v.1c.1.2.3.4.4.6l.1.1H6l.3-.6v-.1c0-.4-.2-.6-.3-.8 0 0-.1 0-.1-.1h-.4z"></path>
    </svg>
                        </use></svg>
                    </li>
                    <?php } else { ?>
                    <li class="goodsCardParameters__item"> <?php echo $at['name'] . ': ' . $at['text']; ?> </li>
                    <?php } ?>
                    <?php } ?>
                    </ul>
                    <div class="goodsCard__footer">
                      <?php if ($product['price']) { ?>
                <div class="goodsCard__price">
                <?php if (!$product['special']) { ?>
                    <?php echo $product['price']; ?>
                <?php } else { ?>
                    <?php echo $product['special']; ?>
                <?php } ?>
                </div>
                <?php } ?>
                <div class="goodsCount">
                    <button type="button" class="goodsCount__button minus"></button>
                        <div class="goodsCount__input">
                            <input type="text" name="quantity" value="4">
                        </div>
                    <button type="button" class="goodsCount__button plus"></button>
                </div>
                <div class="goodsCard__order ">
                  <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '4');" class="goodsCard__button" data-id="<?php echo $product['product_id']; ?>"> Купить</button>
                  <div class="goodsCount">
                    
                  </div>
                </div>
                    </div>
                  </div>
                </div>
                <?php } ?>
                </div></div>
                <div class="catalogList">
                <div id="pag">
                <div class="col-sm-6 text-left" id="pags"><?php echo $pagination; ?></div>
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                </div>
                <?php } ?>
                <?php if (!$products) { ?>
      <p>Нет товаров, соответствующих условиям подбора!</p>
      <div class="buttons">
        <div class="pull-right"><a href="/" class="btn btn-primary">Продолжить</a></div>
      </div>
      <?php } ?>
            </div>
		</div>
     </div>
</div>
</div>
</div>
<script>
$(document).on('click', '.plus', function(){
    var kol = parseInt($(this).prev().find('input[name=\'quantity\']').val())+1;
    $(this).prev().find('input[name=\'quantity\']').val(kol);
    var idf = $(this).parent().next().find('button').attr('data-id');
    $(this).parent().next().find('button').attr('onclick', 'cart.add("' + idf + '", "' + kol + '")');
});
$(document).on('click', '.minus', function(){
    var t = parseInt($(this).next().find('input[name=\'quantity\']').val()) - 1;
    if (t < 1) {
        $(this).next().find('input[name=\'quantity\']').val(1);
    } else {
        $(this).next().find('input[name=\'quantity\']').val(t);
    }
    var idf = $(this).parent().next().find('button').attr('data-id');
    $(this).parent().next().find('button').attr('onclick', 'cart.add("' + idf + '", "' + t + '")');
});
if ($(window).width() < 768){
$('#button-search').remove();
$('input[name=search]').after('<input type="button" value="Поиск" id="button-search" class="catalogOverload__button">');
}
$(window).resize(function() {
if ($(window).width() < 768){
$('#button-search').remove();
$('#button-search').remove();
$('input[name=search]').after('<input type="button" value="Поиск" id="button-search" class="catalogOverload__button">');
}
if ($(window).width() > 768){
$('#button-search').remove();
$('#button-search').remove();
$('.box__inner .col-xs-12').after('<input type="button" value="Поиск" id="button-search" class="catalogOverload__button">');
}
});

</script>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>