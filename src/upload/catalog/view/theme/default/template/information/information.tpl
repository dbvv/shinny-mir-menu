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
      <div style="position: relative;"><?php echo $description; ?></div>
</div>
<?php echo $footer; ?>