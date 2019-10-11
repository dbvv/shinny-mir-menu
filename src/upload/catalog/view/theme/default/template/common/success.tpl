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
      <div class="box box_cart">
          <div class="box__inner">
              <h1 class="box__title"><?php echo $heading_title; ?></h1>
              <section class="cart">
                  <?php echo $text_message; ?>
                  <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
              </section>
          </div>
      </div>
</div>
<?php echo $footer; ?>