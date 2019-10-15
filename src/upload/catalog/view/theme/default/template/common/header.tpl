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
<?php if (isset($og_image) && $og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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

</head>
<body class="<?php echo $class; ?>">
    
  <div class="page">

    <!-- header -->
    <header>
      <div class="head-line">
          <div class="container">
              <div class="row">
                  <div class="col-lg-6 col-md-5 col-sm-5 col-xs-4">
                      <ul class="list-unstyled list-inline">
                          <li class="phone">
                              <i aria-hidden="true" class="fa fa-headphones">
                              </i>
                              <span class="hidden-xs hidden-sm">
                                  Поддержка:
                              </span>
                              <a href="tel:89281122132">8 928 11 22 132</a>
                          </li>
                          <li class="hidden-xs">
                              <a href="/delivery/">
                                  Информация о доставке
                              </a>
                          </li>
                          <li class="hidden-xs">
                              <a href="/about_us/">
                                  О нас
                              </a>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
      </div>
      <div class="head-main">
          <div class="container">
              <div class="row header-row">
                  <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12 logo">
                      <div id="logo">
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
                  </div>
                  <div class="col-lg-6 col-md-5 col-sm-6 col-xs-12">
                      <div class="search-box " id="search">
                          <form class="search">
                              <input autocomplete="off" class="searchTerm" name="search" placeholder="Поиск товара по каталогу ..." type="text"/>
                              <ul class="dropdown-menu">
                              </ul>
                              <div class="live-search" style="display: none;">
                                  <ul>
                                  </ul>
                                  <div class="result-text">
                                  </div>
                              </div>
                              <button class="searchButton hidden-xs" type="button" value="поиск">
                              </button>
                          </form>
                      </div>
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-3 support hidden-sm hidden-xs">
                      <img alt="" class="visible-lg" src="catalog/view/theme/default/image/i2.svg">
                          <h5>
                              123456789
                          </h5>
                          <a data-target="#form_order" data-toggle="modal" style="cursor: pointer">
                              Обратный звонок
                          </a>
                      </img>
                  </div>
                  <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 cart">
                      <?php echo $cart; ?>
                  </div>
              </div>
          </div>
      </div>
  </header>
    <!-- end header -->
