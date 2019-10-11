<?php echo $header; ?>
<script type="text/javascript">
if(!window.voteScript) window.voteScript =
{
	trace_vote: function(div, flag)
	{
		var my_div;
		var r = div.id.match(/^vote_(\d+)_(\d+)$/);
		for(var i = r[2]; i >= 0; i--)
		{
			my_div = document.getElementById('vote_'+r[1]+'_'+i);
			if(my_div)
			{
				if(flag)
				{
					if(!my_div.saved_class)
						my_div.saved_className = my_div.className;
					if(my_div.className!='star-active star-over starts')
						my_div.className = 'star-active star-over starts';
				}
				else
				{
					if(my_div.saved_className && my_div.className != my_div.saved_className)
						my_div.className = my_div.saved_className;
				}
			}
		}
		i = r[2]+1;
		while(my_div = document.getElementById('vote_'+r[1]+'_'+i))
		{
			if(my_div.saved_className && my_div.className != my_div.saved_className)
				my_div.className = my_div.saved_className;
			i++;
		}
	}
}
</script>
<div class="content">
      <div class="box box_breadcrumbs">
        <div class="box__inner">
          <ul class="breadcrumbs">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li class="breadcrumbs__item">
              <a itemprop="url" class="breadcrumbs__link" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            </li>
            <?php } ?>
          </ul>
        </div>
      </div>
      
      <div class="box box_goodsPage" id="product" itemscope="" itemtype="http://schema.org/Product">
          <div class="box__inner">
              <h1 itemprop="name" class="box__title" style="padding-left: 0;text-align: left"><?php echo $heading_title; ?></h1>
              <div class="goodsPage">
                  <div class="goodsPage__section goodsPage__section_left">
<div class="goodsPage__photo">
<img src="<?php echo $thumb; ?>" itemprop="image" class="umi" alt="<?php echo $heading_title; ?>">
</div>
                  </div>
				  <?php if ($attribute_groups) { ?>
				  <div class="addit" style="padding-right: 15px;border-right: 1px solid #eee;padding-top: 15px">
				    <div class="acr"><div><img src="<?php echo $pop; ?>" data-popup="<?php echo $popup; ?>" ></div></div>
				    <?php foreach ($images as $im) { ?>
					   <div><div><img src="<?php echo $im['thumb']; ?>" data-popup="<?php echo $im['popup']; ?>" /></div></div>
					<?php } ?>
				  </div>
				  <?php } ?>
                  <div class="info-main-block-top">
				  <div class="info-top">
				    <div class="rat">
					    <table border="0" cellspacing="0" cellpadding="0">
						<?php if (!$rat) { ?>
	                        <tr>
	                            <td>Рейтинг:&nbsp;&nbsp;&nbsp;</td>
								<td><div id="vote_1670_0" class="star-active star-empty starts" title="1" onmouseover="voteScript.trace_vote(this, true);" onmouseout="voteScript.trace_vote(this, false)"></div></td>
								<td><div id="vote_1670_1" class="star-active star-empty starts" title="2" onmouseover="voteScript.trace_vote(this, true);" onmouseout="voteScript.trace_vote(this, false)"></div></td>
								<td><div id="vote_1670_2" class="star-active star-empty starts" title="3" onmouseover="voteScript.trace_vote(this, true);" onmouseout="voteScript.trace_vote(this, false)"></div></td>
								<td><div id="vote_1670_3" class="star-active star-empty starts" title="4" onmouseover="voteScript.trace_vote(this, true);" onmouseout="voteScript.trace_vote(this, false)"></div></td>
								<td><div id="vote_1670_4" class="star-active star-empty starts" title="5" onmouseover="voteScript.trace_vote(this, true);" onmouseout="voteScript.trace_vote(this, false)"></div></td>
							</tr>
						<?php } else { ?>
						    <tr>
	                            <td>Рейтинг:&nbsp;&nbsp;&nbsp;</td>
							<?php for ($i = 1; $i <= 5; $i++) { 
							if ($i <= $rat) {
								echo '<td><div id="vote_1670_' . $i . '" class="star-active star-over" title="' . $i . '"></div></td>';
							} else {
								echo '<td><div id="vote_1670_' . $i . '" class="star-active star-empty" title="' . $i . '"></div></td>';
							}
							} ?>
							</tr>
						<?php } ?>
                        </table>
					</div>
					</div>
					
					<div style="overflow:hidden">
					<div class="info-left">
					<div class="options">
					<?php if ($attribute_groups) { ?>
						<ul class="list">
						<?php foreach ($attribute_groups as $attribute_group) { ?>
						<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
							<li>
								<span class="key"><span><?php echo $attribute['name']; ?></span></span>
								<span class="value"><?php echo $attribute['text']; ?></span>
							</li>
                        <?php } ?> 
                        <?php } ?> 						
						</ul>
					<?php } ?> 
					</div>
					<div class="articul">Артикул: <span class="value"><b><?php echo $model; ?></b></span></div>
							<div class="availability-row">
							<div class="label">
								<div class="t">В наличии:</div>
									<div class="indicators">
																			<span class="r first"></span>
																			
																			
																		</div>
									<span class="value">&nbsp;</span></div>
									
							<!--<div class="label">
								<div class="t">В наличии:</div>
									<div class="indicators">
									<?php /**$quantity = $quantity > 3 ? 3 : $quantity; for($i = 1; $i <= $quantity; $i++) { ?>
										<span class="r<?php echo $i == 1 ? ' first' : ''; ?>"></span>
									<?php } **/?>
									</div>
									<span class="value">много</span></div>
									-->
						    </div>
							<?php if ($manufacturer) { ?>
							<div class="articul">Производитель: <span class="value"><b><?php echo $manufacturer; ?></b></span></div>
							<?php } ?>
				    </div>
					
					<div class="info-right">
						<ul class="advantage">
                        <li id="advantage_11">
                            <div class="icon"><span class="no-mobile">&nbsp;</span></div>
                            <div class="note">
                                <h2>Доставка</h2>    
                                <p>Экспресс доставка за 1 час по Ростову-на-Дону!<br>Доставляем в регионы России.</p>
                            </div>
                        </li>   	
                       <li id="advantage_13">
                            <div class="icon"><span class="no-mobile">&nbsp;</span></div>
                            <div class="note">
								<h2>Самовывоз</h2>
							    <p>Бесплатно и в удобное для Вас время!<br></p>
                            </div>
                        </li>   	
                        <li id="advantage_14">
                            <div class="icon"><span class="no-mobile">&nbsp;</span></div>
                            <div class="note">
                                <h2>Шиномонтаж</h2>    
                                <p>Работы производятся на высокоточном оборудовании Beissbarth.<br><a href="/shinomontazh/">Запишитесь заранее</a>, чтобы не стоять в очереди!</p>
                            </div>
                        </li>   	
                        <li id="advantage_12">
                            <div class="icon"><span class="no-mobile">&nbsp;</span></div>
                            <div class="note">
                                <h2>Хранение</h2>    
                                <p>Сезонное хранение шин и дисков от 200 рублей!</p>
                            </div>
                        </li>   	
                    </ul>
				    </div>
					</div>
					
					        <div class="cost-cell">
								<div class="now">
									<div class="price_wrapp eq-item " style="line-height: 33px;">
											<div itemprop="price" class="price"> 
											    <?php if (!$special) { ?>
												    <div class="price_value"><?php echo $price; ?></div>
												<?php } else { ?>
												    <div class="price_value"><?php echo $special; ?></div>
												<?php } ?>
												 <span style="display: none;" itemprop="priceCurrency">RUB</span>
											</div>
										</div>
											<span class="counter-wrapp eq-item" style="height: 38px;">
											<span class="x"></span>
											<select name="quantity" class="counter">
												<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4" selected>4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
													<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>
													<option value="32">32</option>
													<option value="33">33</option>
													<option value="34">34</option>
													<option value="35">35</option>
													<option value="36">36</option>
													<option value="37">37</option>
													<option value="38">38</option>
													<option value="39">39</option>
													<option value="40">40</option>
													<option value="41">41</option>
													<option value="42">42</option>
													<option value="43">43</option>
													<option value="44">44</option>
													<option value="45">45</option>
													<option value="46">46</option>
													<option value="47">47</option>
													<option value="48">48</option>
													</select>
													<span class="measure">шт.</span>
												</span>
												<div class="but-cell item_42681">
												<!--noindex-->
													<a class="button_basket gradient to-cart" id="button-cart" rel="nofollow">
														<i></i><span>В корзину</span>
													</a>
													<a class="button_one_click_buy gradient" rel="nofollow">
														<span>Купить в 1 клик</span>
													</a>
													<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
												<!--/noindex-->
											</div>
											<div class="clearboth"></div>
									</div>
									
							</div>
							<div style="padding: 6px 30px;"><a href="#" class="desh">Нашли дешевле?</a> Сделаем скидку!</div>
                        </div>
            <?php if ($options) { ?>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
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
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>                    
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
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>
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
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
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
        </div>
		<div style="background: #fff;
    border: 1px solid #eee">
		    <ul class="uli">
			    <li class="axti"><a href="#poh">Похожие</a></li>
				<li><a href="#desc">Описание</a></li>
			</ul>
		<div class="tab-content">
		    <div id="poh" class="axxti pane">
			    <table class="poh">
				<thead>
				<tr>
				    <th>Наименование</th>
					<th style="width: 100px;">Сезон</th>
					<th>Цена</th>
					<th>Количество</th>
					<th></th>
				</tr>
				</thead>
			    <?php foreach ($products as $product) { ?>
				    <tbody>
				    <tr>
					    <td class="img-mob" data-label="Наименование"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
						<td class="img-mob" data-label="Сезон">
						    <?php foreach ($product['attr'] as $at) { ?>
                                <?php if ($at == 'Лето') { ?>
                                    <img src="/image/leto.png" width=15 />
                                <?php } elseif ($at == 'Зима') { ?>
                                    <img src="/image/zima.png" width=15 />
                                <?php } ?>
							<?php } ?>
						</td>
						<td data-label="Цена">
						    <?php if ($product['price']) { ?>
                                <div class="goodsCard__price" style="text-align:center">
                                <?php if (!$product['special']) { ?>
                                    <?php echo $product['price']; ?>
                                <?php } else { ?>
                                    <?php echo $product['special']; ?>
                                <?php } ?>
                                </div>
                            <?php } ?>
						</td>
						<td class="goodst" data-label="Количество">
						    <div class="goodsCount">
                                <button type="button" class="goodsCount__button minus"></button>
                                <div class="goodsCount__input">
                                    <input type="text" name="quantity" value="4">
                                </div>
                                <button type="button" class="goodsCount__button plus"></button>
                            </div>
						</td>
						<td>
						    <div style="position:relative">
                                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '4');" class="goodsCard__button" data-id="<?php echo $product['product_id']; ?>"> Купить</button>
                                <div class="goodsCount"></div>
                            </div>
						</td>
					</tr>
					</tbody>
				<?php } ?>
				</table>
			</div>
			<div itemprop="description" id="desc" class="pane">
			    <?php echo $description; ?>
			</div>
		</div>
		</div>
    </div>
    </div>
</div>

<script type="text/javascript"><!--
$('.plus').on('click', function(){
    var kol = parseInt($(this).prev().find('input[name=\'quantity\']').val())+1;
    $(this).prev().find('input[name=\'quantity\']').val(kol);
    var idf = $(this).parent().parent().next().find('button').attr('data-id');
    $(this).parent().parent().next().find('button').attr('onclick', 'cart.add("' + idf + '", "' + kol + '")');
});
$('.minus').on('click', function(){
    var t = parseInt($(this).next().find('input[name=\'quantity\']').val()) - 1;
    if (t < 1) {
        $(this).next().find('input[name=\'quantity\']').val(1);
    } else {
        $(this).next().find('input[name=\'quantity\']').val(t);
    }
    var idf = $(this).parent().parent().next().find('button').attr('data-id');
    $(this).parent().parent().next().find('button').attr('onclick', 'cart.add("' + idf + '", "' + t + '")');
});
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
//--></script>
<script type="text/javascript"><!--
$(document).on('click', '.uli a', function(){
	$('.uli li').removeClass('axti');
	$(this).parent().addClass('axti');
	var t = $(this).attr('href');
	$('.pane').css('display', 'none');
	$(t).fadeIn();
	return false;
});
$(document).on('click', '.alert__close', function(){
	$('.notify').slideUp();
	setTimeout(function(){
	    $('.notify').remove();
	}, 1000);
});
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
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
				$('.cartMini').addClass('cm');
					setTimeout(function(){
						$('.cartMini').removeClass('cm');
					}, 300);
					$('header .box__inner').after('<div class="notify" style="display:none"><div class="alert" style="display: block;"><div class="alert__inner">Товар добавлен в корзину. Для оформления закза перейдите по <a href="/cart/">ссылке</a></div><button class="alert__close"></button></div></div>');
                    $('.notify').slideDown();
				html = '';
                    html += '<div class="cartMini__count"> Кол-во товаров: <span id="cart-total">' + json['total'] + '</span>';
                    html += '</div>';
                    html += '<div class="cartMini__sum"> Итого: ';
                    html += '<span>' + json['tot'] + '</span>';
                    html += '</div>';
                    html += '<a href="/checkout/" class="cartMini__link" style="display: inline-block;">Оформить заказ</a>';
                    
					// Need to set timeout otherwise it wont update the total
					setTimeout(function () {
						$('.cartMini__footer').html(html);
					}, 100);
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
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

						$(node).parent().find('input').val(json['code']);
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
		data: $("#form-review").serialize(),
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
    grecaptcha.reset();
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

$(document).ready(function() {
	var hash = window.location.hash;
	if (hash) {
		var hashpart = hash.split('#');
		var  vals = hashpart[1].split('-');
		for (i=0; i<vals.length; i++) {
			$('div.options').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
			$('div.options').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
		}
	}
})
$('.goodsPage__photo').zoom();
$(document).on('click', '.addit > div', function(){
	$('.addit > div').removeClass('acr');
	$(this).addClass('acr');
	var im = $(this).find('img').data('popup');
	$('.umi, .zoomImg').attr('src', im);
	$('.goodsCard__photo').zoom();
});
$(document).on('click', '.desh', function(){
	$('#open-modal').fadeIn();
	return false;
});
$(document).on('click', '.cl', function(){
	$('.modal').fadeOut();
	return false;
});
$(document).on('click', '.button_one_click_buy', function(){
	$('#open-modal2').fadeIn();
	return false;
});
$(document).on('click', '#goy2 input[type=\'submit\']', function(){
    $.ajax({
        type: 'POST',
        url: 'index.php?route=product/product/one',
        data: 'tel=' + $('#goy2 input[type=\'tel\']').val() + '&name=<?php echo $heading_title; ?>',
        success: function(data) {
            if (data == 'ok') {
				$('.modal').fadeOut();
				setTimeout(function(){
				    alert('Ваш заказ принят');
				}, 600);
			}
        }
    });
	return false;
});
$(document).on('click', '.starts', function(){
	var q = $(this).attr('title');
	var d = $(this);
	var div = $(this).attr('id');
    $.ajax({
        type: 'POST',
        url: 'index.php?route=product/product/write',
        data: 'rating=' + q + '&product_id=<?php echo $product_id; ?>',
        success: function(data) {
			if (data['ok'] == 1) {
			    alert(data['s']);
				var my_div;
		        var r = div.match(/^vote_(\d+)_(\d+)$/);
		        for(var i = r[2]; i >= 0; i--) {
			        my_div = document.getElementById('vote_'+r[1]+'_'+i);
			        if(my_div) {
					    if(!my_div.saved_class)
						my_div.saved_className = my_div.className;
					    if(my_div.className!='star-active star-over')
						my_div.className = 'star-active star-over';
			        }
		        }
			} else {
				alert(data['s']);
			}
        }
    });
	return false;
});

//--></script>
<div class="modal" id="open-modal">
    <div class="modal-container">
        <p>Нашли дешевле?</p>
        <a href="#" class="cl">&times;</a>
		<form id="goy">
		    <p><input type="tel" name="tel" placeholder="Номер телефона" /></p>
			<p><input type="text" name="href" placeholder="Ссылка на сайт" /></p>
			<p><input type="submit" value="Отправить" /></p>
		</form>
    </div>
</div>
<div class="modal" id="open-modal2">
    <div class="modal-container">
        <p>Купить в 1 клик <?php echo $heading_title; ?></p>
        <a href="#" class="cl">&times;</a>
		<form id="goy2" class="goy">
		    <p><input type="tel" name="tel" placeholder="Номер телефона" /></p>
			<p><input type="submit" value="Отправить" /></p>
		</form>
    </div>
</div>
<?php echo $footer; ?>
