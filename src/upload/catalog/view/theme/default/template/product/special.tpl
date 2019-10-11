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
        <h2 class="box__title">Акции и спецпредложения</h2>
        
        <?php if ($products) { ?>
        <div class="stock">
          <?php foreach ($products as $product) { ?>
          <div class="goodsCard">
            <div class="goodsCard__section goodsCard__section_left">
              <div class="goodsCard__photo">
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
              </div>
              <div class="goodsCard__vendorCode"> Арт. <?php echo $product['sku']; ?> </div>
            </div>
            <div class="goodsCard__section goodsCard__section_right">
              <a href="<?php echo $product['href']; ?>" class="goodsCard__title"><?php echo $product['name']; ?></a>
              <ul class="goodsCardParameters">
                <?php foreach ($product['attr'] as $at) { ?>
                    <li class="goodsCardParameters__item"> <?php echo $at['name'] . ': ' . $at['text']; ?> </li>
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
          </div>
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
          <?php } else { ?>
      
      <p style="z-index: 9999999999;
    position: relative;"><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      </div>
      </div>
      <?php echo $content_bottom; ?>
     </div>
<script>
$('.plus').on('click', function(){
    var kol = parseInt($(this).prev().find('input[name=\'quantity\']').val())+1;
    $(this).prev().find('input[name=\'quantity\']').val(kol);
    var idf = $(this).parent().next().find('button').attr('data-id');
    $(this).parent().next().find('button').attr('onclick', 'cart.add("' + idf + '", "' + kol + '")');
});
$('.minus').on('click', function(){
    var t = parseInt($(this).next().find('input[name=\'quantity\']').val()) - 1;
    if (t < 1) {
        $(this).next().find('input[name=\'quantity\']').val(1);
    } else {
        $(this).next().find('input[name=\'quantity\']').val(t);
    }
    var idf = $(this).parent().next().find('button').attr('data-id');
    $(this).parent().next().find('button').attr('onclick', 'cart.add("' + idf + '", "' + t + '")');
});
</script>
<?php echo $footer; ?>