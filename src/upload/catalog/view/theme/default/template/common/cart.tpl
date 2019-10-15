<div id="cart" class="btn-group cart-block">
   <button type="button" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-inverse  dropdown-toggle">
      <?php if ($count > 0) { ?><span ><?php echo $count; ?></span><?php } ?>
      <img src="catalog/view/theme/default/image/i1.svg" alt="">
      <i style="text-transform: uppercase;
    font-size: 13px;
    font-weight: 600;
    margin-bottom: 5px;
    color: #404755;
    display: block; font-style: normal;">Корзина покупок</i>
      <?php echo $text_items; ?>  
   </button>
   <ul class="dropdown-menu pull-right">
      <?php if ($products || $vouchers) { ?>
      <li>
         <table class="table table-striped">
            <?php foreach ($products as $product) { ?>
            <tr>
               <td class="text-center"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?>
               </td>
               <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                  <?php } ?>
               </td>
               <td class="text-right">x <?php echo $product['quantity']; ?></td>
               <td class="text-right"><?php echo $product['total']; ?></td>
               <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
            </tr>
            <?php } ?>
            <?php foreach ($vouchers as $voucher) { ?>
            <tr>
               <td class="text-center"></td>
               <td class="text-left"><?php echo $voucher['description']; ?></td>
               <td class="text-right">x&nbsp;1</td>
               <td class="text-right"><?php echo $voucher['amount']; ?></td>
               <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
            </tr>
            <?php } ?>
         </table>
      </li>
      <li>
         <div>
            <table class="table table-bordered">
               <?php foreach ($totals as $total) { ?>
               <tr>
                  <td class="text-right"><?php echo $total['title']; ?></td>
                  <td class="text-right"><strong><?php echo $total['text']; ?></strong></td>
               </tr>
               <?php } ?>
            </table>
            <p class="text-right"><a class="btn btn-bord" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>&nbsp;&nbsp;&nbsp;<a class="btn btn-danger hidden-xs" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></p>
         </div>
      </li>
      <?php } else { ?>
      <li>
         <p class="text-center"><?php echo $text_empty; ?></p>
      </li>
      <?php } ?>
   </ul>
</div>