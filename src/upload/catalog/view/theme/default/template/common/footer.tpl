<div class="w1footer">
<footer id="footer">
    <div class="footer-holder">

<div class="footer-box">
    <span class="title">Шины</span>
<ul>
	<li><a href="/tires/summer/">Летние шины</a></li>
	<li><a href="/tires/winter/">Зимние шины</a></li>
	<li><a href="/gruzovye-shiny/">Грузовые шины</a></li>
</ul>

	<span class="title">Диски</span>     
<ul>
	<li><a href="/discs/litye-diski/">Литые диски</a></li>
	<li><a href="/discs/shtampovannye-diski/">Штампованные диски</a></li>
	<li><a href="/discs/kovanye-diski/">Кованые диски</a></li>
</ul>            

<ul>
	<li><a href="#"></a></li>
	<li><a href="#"></a></li>
</ul>
</div>

<div class="footer-box">
    <span class="title">О магазине</span>
<ul>
	<li><a href="/contacts/">Контакты</a></li>
	<li><a href="/brands/">Производители</a></li>
	<li><a href=""></a></li>
</ul>            <span class="title">Общая информация</span>     
<ul>
	<li><a href="/privacy-policy/">Политика конфиденциальности</a></li>
	<li><a href="#">Гарантия и возврат</a></li>
	<li><a href=""></a></li>
</ul>            <span class="title">Оптовым покупателям</span>
<ul>
	<li><a href="#">Условия сотрудничества</a></li>
</ul>            <ul>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
</div>
        <div class="footer-box">
            <span class="title">Доставка и оплата</span>
<ul>
	<li><a href="/oplata-i-dostavka">Доставка и оплата</a></li>
	<!--<li><a href="#">Способы оплаты</a></li>-->
</ul>            <span class="title">Акции и скидки</span>
<ul>
	<li><a href="/stock">Скидки и бонусы</a></li>
</ul>
        </div>
        <div class="footer-info">
            <span class="logo-footer"><a href="/">Шинный мир</a></span>
            <span class="title">Мы в социальных сетях</span>
            <ul class="social-networks">
                                                    <li><!--noindex--><a href="https://vk.com/shinnyimir" class="vk" rel="nofollow" title="Шинный мир ВКонтакте" target="_blank">vk</a><!--/noindex--></li>
                                                    <li><!--noindex--><a href="https://www.instagram.com/mirshinniy/" class="twitter" rel="nofollow" title="Шинный мир в Instagram" target="_blank">instagram</a><!--/noindex--></li>
                                                    <li><!--noindex--><a href="https://ok.ru/group/56587049566235" class="google" rel="nofollow" alt="Шинный мир в OK" target="_blank">OK</a><!--/noindex--></li>
                                            </ul>

            <p>© 2019<br>Шинный мир — интернет магазин шин и дисков</p>
            <!--<p><a href="#">Карта сайта</a></p>-->
        </div>


    </div>
<!--    <span class="bottom-info">
        <span class="price-info">Все цены на сайте указаны в российских рублях.</span>


    </span> -->
</footer>

</div>


  </div>
  <div class="ajaxSearchResult">
    <button class="ajaxSearchResult__close">
      <span>Закрыть</span>
    </button>
    <div class="ajaxSearchResult__inner"></div>
  </div>
  <script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
      <script type="text/javascript"><!--
if ($(window).width() < 992) {
$('#carousels').owlCarousel({
    items : 1, 
      itemsDesktop : false,
      itemsDesktopSmall : false,
      itemsTablet: false,
      itemsMobile : false,
	loop:true,
    autoHeight : true,
	autoPlay: 6000,
	navigation: true,
	navigationText: ['<img src="image/arrowsStockSlider.png" />', '<img src="image/arrowsStockSlider.png" />'],
	pagination: false
});
} else {
$('#carousels').owlCarousel({
    items: 2,
	loop:true,
    autoHeight : true,
	autoPlay: 6000,
	navigation: true,
	navigationText: ['<img src="image/arrowsStockSlider.png" />', '<img src="image/arrowsStockSlider.png" />'],
	pagination: false
});
}
$('#carousels2').owlCarousel({
	items: 2,
	stagePadding: 200,
	margin: 20,
	loop:true,
    autoHeight : true,
	autoPlay: 6000,
	navigation: true,
	navigationText: ['<img src="image/arrowsStockSlider.png" />', '<img src="image/arrowsStockSlider.png" />'],
	pagination: false
});
--></script>
  <script>
 $('.ttt').owlCarousel({
	items: 6,
	autoPlay: 6000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: false
});
$(document).on('click', '.form_topBoxSearch .form__button', function(){
    $('.form__fieldSearch').css({'transform' : 'translateX(0%)', 'opacity' : '1'});
    $(this).addClass('form__button2').removeClass('form__button');
});
$(document).on('click', '.form_topBoxSearch .form__button2', function(){
    $('.form__fieldSearch').css({'transform' : 'translateX(100%)', 'opacity' : '0'});
    $(this).addClass('form__button').removeClass('form__button2');
});
jQuery(function($) {
	        $(window).scroll(function(){
	            if($(this).scrollTop()>134){
	                $('.headerContacts__info').fadeOut();
	                $('.page').addClass('headerMini');
	            }
	            else if ($(this).scrollTop()<134){
	                $('.headerContacts__info').fadeIn();
	                $('.page').removeClass('headerMini');
	            }
	        });
	    });
  </script>
<script>
var hei = [];
$('.goodsCard').each(function(){
    hei.push($(this).height());
});

Array.prototype.max = function(){
    var max = parseInt(this[this.length-1]), el;
    for(var i=this.length-2; i>=0; i--){
        el = parseInt(this[i]);
        if(el>max){
            max = el;
        }
    }
    return max;
};

var max = hei.max();
$('.goodsCard').height(max);
</script>
<!-- BEGIN JIVOSITE CODE {literal} -->
<script type='text/javascript'>
(function(){ var widget_id = 'iPFh3Ou3ZE';var d=document;var w=window;function l(){
var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);}if(d.readyState=='complete'){l();}else{if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})();</script>
<!-- {/literal} END JIVOSITE CODE -->
</body></html>