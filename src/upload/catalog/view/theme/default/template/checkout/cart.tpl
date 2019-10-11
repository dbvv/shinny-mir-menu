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
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
      <div class="box box_cart">
          <div class="box__inner">
              <h1 class="box__title">Корзина</h1>
              <section class="cart">
                  <header class="cart__header"><div class="cart__column"> Товары в корзине:</div>
                  <div class="cart__column"> Скидка</div>
                  <div class="cart__column"> Цена</div>
                  <div class="cart__column"> Количество</div>
                  </header>
              <section class="cart__body">
                  <?php foreach ($products as $product) { ?>
                  <div class="cart__item">
                      <div class="cart__column">
                          <div class="goodsCard">
                              <div class="goodsCard__section goodsCard__section_left">
                                  <div class="goodsCard__photo">
                                      <?php if ($product['thumb']) { ?>
                                          <img src="<?php echo $product['thumb']; ?>" class="zoomImg">
                                      <?php } ?>
                                  </div>
                              </div>
                              <div class="goodsCard__section goodsCard__section_right">
                                  <a href="<?php echo $product['href']; ?>" class="goodsCard__title"><?php echo $product['name']; ?></a>
                                  <ul class="goodsCardParameters">
                                      <?php foreach ($product['attr'] as $at) { ?>
                                          <li class="goodsCardParameters__item"> <?php echo $at['name'] . ': ' . $at['text']; ?> </li>
                                      <?php } ?>
                                  </ul>
                              </div>
                            </div>
                        </div>
                    <div class="cart__column"></div>
                    <div class="cart__column">
                        <div class="cart__price"> <?php echo $product['price']; ?></div>
                    </div>
                    <div class="cart__column">
                        <div class="cart__controls">
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <div class="goodsCount">
                                <button type="button" class="goodsCount__button minus"></button>
                                <div class="goodsCount__input">
                                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" />
                                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary"></button>
                                </div>
                                <button type="button" class="goodsCount__button plus"></button>
                                </div><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" class="cart__remove">
                                    <svg class="icon__remove" width="18px" height="18px"><use xlink:href="#remove">
                                        <svg id="remove" viewBox="0 0 18 18" width="100%" height="100%">
      <path d="M6.2 0h5.7c.3.2.4.4.4.8V2h5c.3 0 .6.1.7.4v.3c-.1.3-.4.4-.7.4h-1.6v.6c-.1 1-.1 2-.2 3l-.3 5.7-.3 4.8c0 .3-.1.6-.4.7h-11c-.2-.1-.4-.3-.4-.5-.1-1.3-.2-2.7-.2-4-.1-1.3-.1-2.6-.2-3.9l-.3-4.8c0-.5-.1-1-.1-1.5H.7C.4 3.2.1 3 0 2.7v-.3c.1-.3.4-.4.7-.4h5.1V.8c0-.4.1-.6.4-.8zm8.4 3.2H3.5c.2 4.5.5 9.1.7 13.6h9.6c.3-4.5.5-9.1.8-13.6zm-3.5-2.1H7V2h4.1v-.9z"></path><path d="M12.9 5l-.3 4.8c-.1 1.3-.1 2.5-.2 3.8 0 .6-.1 1.1-.1 1.7 0 .3-.3.6-.6.6s-.5-.3-.5-.6c0-.7.1-1.4.1-2.1.1-1.3.2-2.6.2-3.9.1-1.5.2-2.9.2-4.4 0-.3.3-.5.6-.5s.5.2.5.6c.1-.1.1 0 .1 0zm-7.8.2v-.3c0-.3.2-.6.5-.6s.6.2.6.5c.1.7.1 1.4.1 2.1.1 1.6.2 3.3.3 4.9.1 1.1.1 2.3.2 3.4 0 .3-.2.6-.5.6s-.6-.2-.6-.5c-.1-.7-.1-1.5-.1-2.2-.1-1.3-.2-2.7-.2-4-.2-1.3-.2-2.6-.3-3.9zM9.6 10v5.1c0 .4-.2.7-.6.7-.3 0-.5-.2-.5-.5V4.9c0-.5.2-.8.6-.7.3 0 .5.2.5.5V10z"></path>
    </svg>
                                    </use></svg>
                                    <span>Удалить</span></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                    </section>
                    <footer class="cartResult">
                        <?php foreach ($totals as $total) { ?>
                        <?php if ($total['title'] != 'Итого') { ?>
                        <div class="cartResult__fullSum"> <?php echo $total['title']; ?>:&nbsp;<span><?php echo $total['text']; ?></span></div>
                        <?php } else { ?>
                        <div class="cartResult__sum"> <?php echo $total['title']; ?>:&nbsp;<span><?php echo $total['text']; ?></span></div>
                        <?php } ?>
                        <?php } ?>
                    </footer>
                </section>
                <form action="" method="post" class="form form_cartOrder">
                    <h4 class="form__title">Ваши контактные данные:</h4>
                    <label class="form__label form__label_text "><span class="form__caption">Имя</span>
                        <div class="form__fieldWrapper">
                            <input required="required" type="text" name="firstname" class="form__field"></div></label>
                    <label class="form__label form__label_text phone"><span class="form__caption">Телефон</span>
                        <div class="form__fieldWrapper">
                            <input required="required" type="text" name="telephone" class="form__field" id="phone"></div></label>
                    <label class="form__label form__label_text "><span class="form__caption" style="display:none;">Ваш Email</span>
                        <div class="form__fieldWrapper" style="display:none;">
                            <input required="required" type="email" name="email" class="form__field" value="zakaz@shinniy-mir.ru" style="display:none;"></div></label>
                    <label class="form__label form__label_text "><span class="form__caption">Адрес доставки</span>
                        <div class="form__fieldWrapper">
                            <input type="text" name="address_1" class="form__field"></div></label>
                    <h4 class="form__title">Комментарий к заказу:</h4>
                    <label class="form__label form__label_textarea ">
                        <div class="form__fieldWrapper">
                            <textarea name="comment" class="form__field"></textarea>
                        </div>
                    </label>
                    <div class="form__fieldWrapper" style="margin: 20px;">
                        <center> Нажимая кнопку "Оформить заказ", я принимаю условия Пользовательского соглашения и даю своё согласие на <a target="_blank" style="color: #555; text-decoration: underline;" href="image/1.pdf">обработку моих персональных данных</a>
                        </center>
                    </div>
                    <div class="buttonWrapper"><button type="submit" class="form__button"> Оформить заказ</button></div>
                </form>
            </div>
        </div>
    <div class="hiden_payment_info" style="display:none;"></div>
	</div>
<script>
$('.plus').on('click', function(){
    $(this).prev().find('input').val(parseInt($(this).prev().find('input').val())+1);
    $(this).prev().find('button').trigger("click");
});
$('.minus').on('click', function(){
    var t = parseInt($(this).next().find('input').val()) - 1;
    if (t < 1) {
        $(this).next().find('input').val(1);
    } else {
        $(this).next().find('input').val(t);
    }
    $(this).next().find('button').trigger("click");
    
});
$('.form__button').on('click', function(){
    $.ajax({
        url: 'index.php?route=checkout/cart/order',
        type: 'post',
        data: $('.form_cartOrder input[type=\'text\'], .goodsCount__input input, .form_cartOrder input[type=\'tel\'], .form_cartOrder input[type=\'email\'], .form_cartOrder textarea, .form_cartOrder[type=\'number\']'),
        dataType: 'json',
        success: function (json) {
            if (json.error) {
                if (json['error']['firstname']) {
                    $('#firstname').after(json['error']['firstname']);
                }

                if (json['error']['email']) {
                    $('#email').after(json['error']['email']);
                }

                if (json['error']['telephone']) {
                    $('#phone').after(json['error']['telephone']);
                }

                if (json['error']['address']) {
                    $('#city').after(json['error']['address']);
                }
            } else if(json['cod']) {
                $.ajax({
                    type: 'get',
                    url: 'index.php?route=extension/payment/cod/confirm',
                    cache: false,
                    success: function() {
                        location = 'index.php?route=checkout/success';
                    }
               });
            } else if(json['payment']) {
                $('.hiden_payment_info').html(json['payment']);
                $('.hiden_payment_info #button-confirm').trigger('click');
            } else {
    if (json.credit)
        credit_confirm('/index.php?route=checkout/part_payment_cart/getResult&from_privat24=true');
    }
},
error: function (xhr, ajaxOptions, thrownError) {
    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
}
});
return false;
});
</script>
<?php echo $footer; ?>
