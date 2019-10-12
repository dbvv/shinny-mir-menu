<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<?php if (isset($og_url)): ?>
  <meta property="og:url" content="<?php echo $og_url; ?>" />
<?php endif; ?>
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script async src="catalog/view/javascript/jquery.zoom.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/default/stylesheet/style.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/bootstrap.css" rel="stylesheet">
<link href="/image/favicon.ico" rel="icon" type="image/x-icon" />
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>



<!-- Yandex.Metrika counter --> <script type="text/javascript" > (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)}; m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)}) (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym"); ym(49154425, "init", { id:49154425, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); </script> <noscript><div><img src="https://mc.yandex.ru/watch/49154425" style="position:absolute; left:-9999px;" alt="" /></div></noscript> <!-- /Yandex.Metrika counter -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-121201975-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-121201975-1');
</script>

</head>
<body class="<?php echo $class; ?>">
    
  <div class="page">
    <header class="box box_header mini">
      <div class="box__inner">
        <div class="header">
          <div class="header__column header__column_left">
          <?php if ($logo) { ?>
            <?php if (isset($og_url) && $home == $og_url) { ?>
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
            <?php } else { ?>
              <a href="<?php echo $home; ?>" class="logo"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
            <?php } ?>
          <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
          </div>
          <div class="header__column header__column_center">
            <div class="headerContacts">
              <div class="headerContacts__item">
                <div class="headerContacts__phone icons">
                  <span class="headerContacts__icons">
                    <svg class="whatsup" width="20px" height="19px">
                      <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#whatsup">
                          <svg id="whatsup" viewBox="0 0 20 19" width="100%" height="100%">
      <path d="M10.5 0c.3 0 .7.1 1 .1 3.3.5 5.8 2.1 7.3 4.9.8 1.5 1.2 3 1.1 4.7-.3 3.9-2.4 6.6-6.2 8.1-2.8 1.1-5.6.9-8.2-.4-.1-.1-.2-.1-.3 0-1.7.5-3.4 1-5.2 1.6h-.1v-.2c.6-1.6 1.1-3.1 1.7-4.7v-.3C.5 12 .1 10.1.5 8c.3-2.1 1.3-3.9 2.9-5.3C5 1.2 6.9.3 9.1.1c.3-.1.5-.1.7-.1h.7zM2.6 16.6h.2c.9-.3 1.8-.5 2.7-.8.2-.1.3 0 .5.1 1.3.8 2.8 1.2 4.3 1.1 1.3 0 2.6-.3 3.7-.9 2.8-1.3 4.6-4.3 4.4-7.2-.1-1.9-.9-3.6-2.3-4.9-2.1-2-4.5-2.7-7.3-2.3-4 .6-6.9 4-6.8 7.8 0 1.5.5 2.9 1.5 4.2.1.1.1.2 0 .3-.3.8-.6 1.7-.9 2.6z"></path><path d="M5.3 7.3c0-1.1.4-1.8 1-2.3.2-.2.4-.3.7-.3h.5c.2 0 .3.1.3.2.3.7.6 1.4.8 2.1 0 .1 0 .3-.1.4-.1.3-.3.5-.5.8-.2.1-.2.3-.1.6.6 1.1 1.5 1.9 2.6 2.5.2.1.5.2.7.3.2.1.3.1.4-.1l.6-.6c.5-.5.5-.5 1.1-.2.6.3 1.1.6 1.7.8.2.1.2.2.2.4 0 .8-.4 1.4-1.1 1.7-.8.3-1.5.4-2.3.1-1.2-.4-2.4-.9-3.4-1.8-1.1-1-2-2.1-2.7-3.3-.3-.5-.4-1-.4-1.3z"></path>
    </svg>
                      </use>
                    </svg>
                    <svg class="viber" width="18px" height="19px">
                      <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#viber">
                          <svg id="viber" viewBox="0 0 18 19" width="100%" height="100%">
      <path d="M5 19c-.1-.1-.3-.1-.4-.2-.3-.2-.3-.5-.3-.8v-1.7c0-.2-.1-.3-.2-.3-.8-.3-1.6-.7-2.2-1.3-.7-.7-1.1-1.4-1.4-2.3C.1 11.3 0 10.2 0 9c0-1.1 0-2.2.2-3.3.1-.9.4-1.9.9-2.7.6-1 1.4-1.7 2.5-2.1C5 .3 6.5.1 8 0c1.2 0 2.3 0 3.5.1 1.4.2 2.8.6 4 1.4.5.3.8.7 1.2 1.2.7 1.1 1 2.3 1.2 3.5 0 .3 0 .6.1.9V9c0 .3-.1.5-.1.8-.1 1-.2 2-.6 3-.6 1.5-1.7 2.6-3.2 3.2-1 .4-2.1.6-3.2.7-1.1.1-2.2.1-3.3.1-.1 0-.2 0-.3.1-.4.4-.7.8-1.1 1.2-.2.3-.5.5-.8.8.1 0-.1 0-.4.1.1 0 .1 0 0 0zm0-.7c.1-.1.1-.1.2-.1.8-.8 1.5-1.6 2.3-2.5.2-.2.4-.3.8-.3.9 0 1.7 0 2.6-.1.8-.1 1.6-.3 2.3-.5 1.5-.4 2.5-1.3 3-2.7.3-.7.3-1.5.4-2.2.1-1.1.1-2.2 0-3.2s-.4-1.9-.8-2.8c-.3-.5-.7-.9-1.1-1.2-1.2-.7-2.5-1-3.8-1.1-1.2-.1-2.4-.1-3.7 0-1-.1-2 .1-2.8.5-.6.2-1.1.6-1.5 1-.9.9-1.2 2-1.4 3.1-.1.7-.1 1.3-.1 2 0 1.2 0 2.4.4 3.6.2.7.6 1.3 1.2 1.9.5.5 1.2.9 1.9 1.1.1 0 .1.1.1.2v3.3z"></path><path d="M11.7 13.5c-.3-.1-.6-.2-.9-.4-1.2-.5-2.4-1.3-3.4-2.2-1-.9-1.8-1.9-2.4-3-.4-.5-.7-1.2-.9-1.9-.2-.5-.1-1 .3-1.3.3-.2.6-.4.8-.6.3-.2.7-.2 1 .1.6.6 1.1 1.2 1.4 1.9.2.3.1.6-.2.9-.2.1-.3.2-.4.3-.2.2-.3.4-.2.6.1.6.4 1 .8 1.5.5.5 1 1 1.6 1.2.1.1.3.1.5.1s.4-.1.5-.2c.1-.1.2-.2.3-.4.3-.3.7-.4 1-.2.7.4 1.3.8 1.9 1.3.2.2.3.5.1.8-.3.5-.7 1-1.2 1.3-.3.1-.4.1-.6.2zm1.6-5.2v.2c0 .1 0 .2-.2.2-.1 0-.1-.1-.1-.2-.1-.4-.1-.8-.2-1.3-.2-1-.8-1.8-1.7-2.4-.7-.3-1.4-.5-2.1-.5h-.1c-.1 0-.1-.1-.2-.1.1-.2.1-.3.2-.3h.8c1 .2 1.8.6 2.5 1.3.6.7 1 1.4 1.1 2.3v.8z"></path><path d="M12.2 7.9V8c0 .1 0 .2-.2.3-.2 0-.2-.1-.2-.3 0-.4-.1-.7-.2-1.1-.4-.8-1-1.2-1.8-1.4-.2 0-.4-.1-.6-.1-.1 0-.2-.1-.1-.2 0-.1.1-.1.2-.1 1.5.1 2.7 1.1 2.9 2.6v.2z"></path><path d="M11 7.7s-.1.1-.1.2c-.1 0-.2-.1-.2-.2-.1-.7-.3-1-1.1-1.1-.1 0-.2 0-.2-.2 0-.1.1-.1.2-.1.9 0 1.4.5 1.4 1.4z"></path>
    </svg>
                      </use>
                    </svg>
                  </span>
                  <a href="tel:89281122132">8 928 11 22 132</a>
                </div>
                <div class="headerContacts__info">
                  <svg class="icon__workTime" width="10px" height="10px">
                    <use xlink:href="#workTime">
                        <svg id="workTime" viewBox="0 0 10 10" width="100%" height="100%">
      <path d="M4.8 0h.4c.3 0 .6.1.8.1 1.2.3 2.2.9 2.9 1.8.6.8 1 1.7 1.1 2.7v.7c0 .3 0 .6-.1.9-.4 1.3-1.2 2.4-2.4 3.1-.6.4-1.3.6-2 .7h-.7c-.3 0-.5 0-.8-.1-1.2-.3-2.3-.9-3-2-.6-.7-.9-1.5-1-2.4v-.7c0-.3 0-.6.1-.9C.4 2.5 1.2 1.5 2.4.8 3.1.3 3.8.1 4.5 0h.3zm.2.6C2.6.6.6 2.6.6 5c0 2.4 2 4.4 4.4 4.4 2.4 0 4.4-2 4.4-4.4C9.4 2.6 7.4.6 5 .6z"></path><path d="M5.3 3.1v1.6c0 .1 0 .1.1.1l1.8 1.8c0 .2.1.3 0 .4 0 .2-.3.3-.5.2l-.1-.1c-.5-.6-1.2-1.2-1.8-1.8-.1-.1-.1-.2-.1-.3V1.5c0-.2.2-.2.3-.2.1 0 .2.1.2.3.1.4.1 1 .1 1.5z"></path>
    </svg>
                    </use>
                  </svg> с 9:00 до 18:00 без перерывов и выходных, консультации по телефону и срочные покупки до 21:00 ежедневно
                </div>
              </div>
              <div class="headerContacts__item">
                <div class="headerContacts__phone">
                  <a href="tel:+78633112801">8 863 311 28 01</a>
                </div>
                <div class="headerContacts__info">
                  <svg class="icon__address" width="8px" height="10px">
                    <use xlink:href="#address">
                        <svg id="address" viewBox="0 0 8 10" width="100%" height="100%">
      <path d="M8 3.5v.7c-.1.5-.3.9-.6 1.3-.6.9-1.3 1.8-1.9 2.6-.4.6-.8 1.2-1.2 1.7-.1.1-.1.2-.2.2H4c-.1 0-.2-.1-.2-.2C2.7 8.4 1.6 7 .6 5.5.3 5 .1 4.5 0 3.9v-.8c.1-.4.2-.9.4-1.2C1 1.1 1.8.5 2.7.2c.4-.1.8-.2 1.1-.2h.6c.4 0 .7.1 1 .2.9.4 1.6.9 2.1 1.6.3.5.5 1 .5 1.5v.2zM4 9.1c1-1.4 1.9-2.7 2.8-4 .4-.6.6-1.3.5-2-.1-.4-.2-.8-.5-1.2C6.1 1.1 5.2.7 4.2.6h-.8c-.7.2-1.3.4-1.8.9C.9 2.2.5 3 .7 4.1c.1.4.2.8.5 1.1C2.1 6.5 3 7.8 4 9.1z"></path><path d="M2.1 3.6c0-.6.3-1 .8-1.4.2-.2.5-.3.9-.3.6-.1 1.2.1 1.7.6.2.3.4.6.4.9.1.6-.2 1.1-.7 1.5-.3.2-.6.4-1 .4-.6.1-1.2-.1-1.6-.6-.3-.2-.4-.5-.5-.9v-.2zM4 4.7c.3 0 .6-.1.9-.3.4-.4.5-1 .1-1.4-.2-.3-.5-.5-.8-.5-.4 0-.7 0-1 .3-.5.4-.6 1-.2 1.5.3.3.6.4 1 .4z"></path>
    </svg>
                    </use>
                  </svg>
                  г.
                  <nobr>
                    Ростов-на-Дону
                  </nobr>
                  ул. Малиновского, 33б (<nobr>Фортуна-1</nobr>), павильон №43
                  <a href="contacts" tppabs="/contacts/">Показать на карте</a>
                </div>
              </div>
            </div>
          </div>
          <div class="header__column header__column_right">
            <?php echo $cart; ?>
          </div>
        </div>
      </div>
    </header>
    
    <div class="box box_topBox">
      <div class="box__inner">
        <div class="topBox">
          <div class="topBox__column topBox__column_left">
            <div class="menu">
              <div class="mobile-button mobile-button_active">
                <a href="#">Меню</a>
                <span class="mobile-button__burger"></span>
              </div>
              <a href="/tires/" class="nav__link ">Легковые шины</a>
              <a href="/discs/" class="nav__link ">Диски</a>
              <a href="/contacts/" class="nav__link ">Контакты</a>
              <?php if ($categories) { ?>
              <ul class="navmenutop">
                <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == '' ? ' active' : ''; ?>">
                  <a href="/" class="nav__link ">Главная</a>
                </li>
                <?php foreach ($categories as $category) { $t = explode('/',$category['href']); ?>
                <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == $t[3] ? ' active' : ''; ?>">
                  <a href="<?php echo $category['href']; ?>" class="nav__link "><?php echo $category['name']; ?></a>
                </li>
                <?php } ?>
               <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == 'trade-in' ? ' active' : ''; ?>">
                  <a href="/trade-in/" class="nav__link " style="color:red;">Trade-In</a>
                </li>				
                <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == 'gruzovye-shiny' ? ' active' : ''; ?>">
                  <a href="/gruzovye-shiny/" class="nav__link ">Грузовые шины</a>
                </li>
                <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == 'datchiki-davleniya-v-shinah' ? ' active' : ''; ?>">
                  <a href="/datchiki-davleniya-v-shinah/" class="nav__link ">Датчики</a>
                </li>
                <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == 'shinomontazh' ? ' active' : ''; ?>">
                  <a href="/shinomontazh/" class="nav__link ">Шиномонтаж</a>
                </li>
                <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == 'zapravka-avtokondicionerov' ? ' active' : ''; ?>">
                  <a href="/zapravka-avtokondicionerov/" class="nav__link ">Заправка кондиционеров</a>
                </li>		
                <!-- <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == 'stock' ? ' active' : ''; ?>">
                  <a href="/stock/" class="nav__link ">Акции</a>
                </li>
                <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == 'oplata-i-dostavka' ? ' active' : ''; ?>">
                  <a href="/oplata-i-dostavka/" class="nav__link ">Оплата и доставка</a> -->
                </li>
                <li class="nav__item<?php echo basename($_SERVER['REQUEST_URI']) == 'contacts' ? ' active' : ''; ?>">
                  <a href="/contacts/" class="nav__link ">Контакты</a>
                </li>
              </ul>
              <?php } ?>
            </div>
          </div>
          <div class="topBox__column topBox__column_right">
            <?php echo $search; ?>
          </div>
        </div>
      </div>
    </div>
    
<!--        <div class="indexSlider">
      <div class="indexSlider__inner">
        <div class="indexSliderBox owl-carousel ttt">
		  <div data-background="image/no-image-foto.png" class="indexSliderBox__item">
            <p class="indexSliderBox__text"> Рассрочка и кредит! </p>
          </div>
          <div data-background="image/no-image-foto.png" class="indexSliderBox__item">
            <p class="indexSliderBox__text"> Сезонное хранение шин от 200 рублей! </p>
          </div>
          <div data-background="image/no-image-foto.png" class="indexSliderBox__item">
            <p class="indexSliderBox__text"> Экспресс доставка за 1 час по Ростову-на-Дону! </p>
          </div>
          <div data-background="image/no-image-foto.png" class="indexSliderBox__item">
            <p class="indexSliderBox__text"> Комплект шин + шиномонтаж = накачка азотом БЕСПЛАТНО! </p>
          </div>
          <div data-background="image/no-image-foto.png" class="indexSliderBox__item">
            <p class="indexSliderBox__text"> Бесплатная доставка от 15 000 рублей по Ростову-на-Дону! </p>
          </div>
          <div data-background="image/no-image-foto.png" class="indexSliderBox__item">
            <p class="indexSliderBox__text"> Шиномонтаж в ПОДАРОК при покупке комплекта шин и литых дисков! </p>
          </div>
          <div data-background="image/no-image-foto.png" class="indexSliderBox__item">
            <p class="indexSliderBox__text"> Скидки до 50% по Trade-In </p>
          </div>
        </div>
        <div class="indexSlider__bg active" style="background-image: url(/image/no-image-foto.png);display: block;"></div>
      </div>
    </div>
-->	
	
<script>
    if ($(window).width() < 768){
        $('.menu .navmenutop').addClass('nav_mobile');
    }
    $(document).on('click', '.mobile-button', function(){
        $('.nav_mobile').fadeIn();
        $(this).addClass('mobile-button_open');
        $(this).removeClass('mobile-button_active');
    });
    $(document).on('click', '.mobile-button_open', function(){
        $('.nav_mobile').fadeOut();
        $(this).addClass('mobile-button_active');
        $(this).removeClass('mobile-button_open');
    });
</script>