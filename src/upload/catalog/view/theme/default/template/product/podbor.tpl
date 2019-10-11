<?php echo $header; ?>
<div class="content">
      <div class="box box_breadcrumbs">
        <div class="box__inner">
          <ul class="breadcrumbs">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li class="breadcrumbs__item">
                <?php if ($breadcrumb['href']) { ?>
                    <a class="breadcrumbs__link" href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } else { ?>
                    <span class="breadcrumbs__final"><?php echo $breadcrumb['text']; ?></span>
                <?php } ?>
            </li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <div class="box box_catalog">
        <div class="box__inner">
          <h1 class="box__title" style="padding: 0">Подбор по авто <?php echo $_GET['vendor'] . ' ' . $_GET['car'] . ' ' . $_GET['year'] . ' ' . $_GET['mod']; ?></h1>
          <?php if ($arr) { ?>
          <div class="selectionPage">
              <div class="selectionPage__column">
                  <div class="selectionAuto open">
                      <div class="selectionAuto__title"> Размеры шин для <?php echo $_GET['vendor'] . ' ' . $_GET['car'] . ' ' . $_GET['year'] . ' ' . $_GET['mod']; ?> </div>
                      <div class="selectionAuto__table" style="">
                          <table class="opl"><tbody>
                            <tr>
                              <td></td>
                              <td>
                                  <ul class="selectionAuto__head">
                                      <li> Передняя ось</li>
                                      <li> Задняя ось</li>
                                  </ul>
                              </td>
                            </tr>
                            <?php if (count($e)) { ?>
                            <tr>
                                <td colspan="2">
                                    <b>Размеры производителя</b>
                                </td>
                            </tr>
                            
                            <tr class="iko">
                                <td colspan="2">
                                    <?php foreach ($e as $t5) { ?>
                                    <?php if (count($t5['th'][$t5['r']]) == 1) { ?>
                                        <div style="position: relative;padding: 16px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } else { ?>
                                        <div style="position: relative;padding: 6px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } ?>
                                    <div class="selectionAuto__radius">
                                        <span>R<?php echo $t5['r']; ?></span>
                                    </div>
                                    <div style="line-height: 62px;padding: 0 5px;padding-left: 20%;width: 100%;">
                                        <?php foreach ($t5['th'][$t5['r']] as $t33) { ?>
                                        <a href="<?php echo $t33['href']; ?>" class="selectionAuto__link" style="float: left;width: 50%">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th']; ?></span>
                                        </a>
                                        <a href="<?php echo $t33['href2']; ?>" class="selectionAuto__link" style="float: left;width: 50%">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th2']; ?></span>
                                        </a>
                                        <?php } ?> 
                                    </div>
                                    </div>
                                    <?php } ?>
                                </td>
                            </tr> 
                            <?php } ?> 
                            
                            <?php if (count($e3)) { ?>
                            <tr>
                                <td colspan="2">
                                    <b>Варианты замены</b>
                                </td>
                            </tr>
                            <tr class="iko">
                                <td colspan="2">
                                    <?php foreach ($e3 as $t5) { ?>
                                    <?php if (count($t5['th'][$t5['r']]) == 1) { ?>
                                        <div style="position: relative;padding: 16px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } else { ?>
                                        <div style="position: relative;padding: 6px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } ?>
                                    <div class="selectionAuto__radius">
                                        <span>R<?php echo $t5['r']; ?></span>
                                    </div>
                                    <div style="line-height: 62px;padding: 0 5px;padding-left: 20%;width: 100%;">
                                        <?php foreach ($t5['th'][$t5['r']] as $t33) { ?>
                                        <a href="<?php echo $t33['href']; ?>" class="selectionAuto__link" style="float: left;width: 50%">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th']; ?></span>
                                        </a>
                                        <a href="<?php echo $t33['href2']; ?>" class="selectionAuto__link" style="float: left;width: 50%">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th2']; ?></span>
                                        </a>
                                        <?php } ?> 
                                    </div>
                                    </div>
                                    <?php } ?>
                                </td>
                            </tr>
                            <?php } ?>
                            
                            <?php if (count($e4)) { ?>
                            <tr class="tun">
                                <td colspan="2">
                                    <b>Для тюнинга</b>
                                </td>
                            </tr>
                            
                            
                            <tr class="tun iko">
                                <td colspan="2">
                                    <?php foreach ($e4 as $t5) { ?>
                                    <?php if (!$t5['r']) { ?>
                                        <style>
                                            .tun {display: none;}
                                        </style>
                                    <?php } ?>
                                    <?php if (count($t5['th'][$t5['r']]) == 1) { ?>
                                        <div style="position: relative;padding: 20px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } else { ?>
                                        <div style="position: relative;padding: 6px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } ?>
                                    <div class="selectionAuto__radius">
                                        <span>R<?php echo $t5['r']; ?></span>
                                    </div>
                                    <div style="line-height: 62px;padding: 0 5px;padding-left: 20%;width: 100%;">
                                        <?php foreach ($t5['th'][$t5['r']] as $t33) { ?>
                                        <a href="<?php echo $t33['href']; ?>" class="selectionAuto__link" style="float: left;width: 50%;margin: 0">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th']; ?></span>
                                        </a>
                                        <a href="<?php echo $t33['href2']; ?>" class="selectionAuto__link" style="float: left;width: 50%;margin: 0">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th2']; ?></span>
                                        </a>
                                        <?php } ?> 
                                    </div>
                                    </div>
                                    <?php } ?>
                                </td>
                            </tr>
                            <?php } ?>
                          </tbody>
                          </table>
                      </div>
                      </div>
                      </div>
                      <div class="selectionPage__column">
                          <div class="selectionAuto open">
                              <div class="selectionAuto__title"> Размеры дисков для <?php echo $_GET['vendor'] . ' ' . $_GET['car'] . ' ' . $_GET['year'] . ' ' . $_GET['mod']; ?> </div>
                              <div class="selectionAuto__table" style="">
                                  <table class="opl"><tbody>
                                      <tr>
                                          <td colspan="2" class="selectionAuto__options"><b>Общие параметры</b>
                                          <table><tbody>
                                              <?php foreach ($arr as $a) { ?>
                                              <tr>
                                                  <td>PCD: <?php echo $a['pcd']; ?></td>
                                                  <td>DIA: <?php echo $a['dia']; ?> мм</td>
                                                  <?php if ($a['bolt']) { ?>
                                                      <td>Болт: <?php echo $a['bolt']; ?></td>
                                                  <?php } ?>
                                              </tr>
                                              <?php } ?>
                                          </tbody></table>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td></td>
                                          <td>
                                              <ul class="selectionAuto__head">
                                                  <li> Передняя ось</li>
                                                  <li> Задняя ось</li>
                                              </ul>
                                          </td>
                                      </tr>
                                      
                                      <?php if (count($e2)) { ?>
                                      <tr>
                                <td colspan="2">
                                    <b>Размеры производителя</b>
                                </td>
                                </tr>
                                <tr class="iko">
                                <td colspan="2">
                                    <?php foreach ($e2 as $t5) { ?>
                                    <?php if (count($t5['th'][$t5['r']]) == 1) { ?>
                                        <div style="position: relative;padding: 16px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } else { ?>
                                        <div style="position: relative;padding: 6px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } ?>
                                    <div class="selectionAuto__radius">
                                        <span>R<?php echo $t5['r']; ?></span>
                                    </div>
                                    <div style="line-height: 62px;padding: 0 5px;padding-left: 20%;width: 100%;">
                                        <?php foreach ($t5['th'][$t5['r']] as $t33) { ?>
                                        <a href="<?php echo $t33['href']; ?>" class="selectionAuto__link" style="float: left;width: 50%">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th']; ?></span>
                                        </a>
                                        <a href="<?php echo $t33['href2']; ?>" class="selectionAuto__link" style="float: left;width: 50%">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th2']; ?></span>
                                        </a>
                                        <?php } ?> 
                                    </div>
                                    </div>
                                    <?php } ?>
                                </td>
                            </tr>
                            <?php } ?>
                                      
                            <?php if (count($e5)) { ?>
                            <tr>
                                <td colspan="2">
                                    <b>Варианты замены</b>
                                </td>
                            </tr>
                            <tr class="iko">
                                <td colspan="2">
                                    <?php foreach ($e5 as $t5) { ?>
                                    <?php if (count($t5['th'][$t5['r']]) == 1) { ?>
                                        <div style="position: relative;padding: 16px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } else { ?>
                                        <div style="position: relative;padding: 6px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } ?>
                                    <div class="selectionAuto__radius">
                                        <span>R<?php echo $t5['r']; ?></span>
                                    </div>
                                    <div style="line-height: 62px;padding: 0 5px;padding-left: 20%;width: 100%;">
                                        <?php foreach ($t5['th'][$t5['r']] as $t33) { ?>
                                        <a href="<?php echo $t33['href']; ?>" class="selectionAuto__link" style="float: left;width: 50%">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th']; ?></span>
                                        </a>
                                        <a href="<?php echo $t33['href2']; ?>" class="selectionAuto__link" style="float: left;width: 50%">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th2']; ?></span>
                                        </a>
                                        <?php } ?> 
                                    </div>
                                    </div>
                                    <?php } ?>
                                </td>
                            </tr>
                            <?php } ?>
                            
                            <?php if (count($e6)) { ?>
                            <tr class="tun">
                                <td colspan="2">
                                    <b>Для тюнинга</b>
                                </td>
                            </tr>
                            
                            <tr class="tun2 iko">
                                <td colspan="2">
                                    <?php foreach ($e6 as $t5) { ?>
                                    <?php if (!$t5['r']) { ?>
                                        <style>
                                            .tun2 {display: none;}
                                        </style>
                                    <?php } ?>
                                    <?php if (count($t5['th'][$t5['r']]) == 1) { ?>
                                        <div style="position: relative;padding: 20px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } else { ?>
                                        <div style="position: relative;padding: 6px 0;overflow: hidden;border-bottom: 1px solid #919191;">
                                    <?php } ?>
                                    <div class="selectionAuto__radius">
                                        <span>R<?php echo $t5['r']; ?></span>
                                    </div>
                                    <div style="line-height: 62px;padding: 0 5px;padding-left: 20%;width: 100%;">
                                        <?php foreach ($t5['th'][$t5['r']] as $t33) { ?>
                                        <a href="<?php echo $t33['href']; ?>" class="selectionAuto__link" style="float: left;width: 50%;margin: 0">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th']; ?></span>
                                        </a>
                                        <a href="<?php echo $t33['href2']; ?>" class="selectionAuto__link" style="float: left;width: 50%;margin: 0">
                                            <span style="width: 100%;float: none;clear: none;margin: 0"><?php echo $t33['th2']; ?></span>
                                        </a>
                                        <?php } ?> 
                                    </div>
                                    </div>
                                    <?php } ?>
                                </td>
                            </tr>
                            <?php } ?>
                                    </tbody></table>
                                </div>
                            </div>
                        </div>
                </div>
            <?php } else { ?>
                <div class="selectionPage"><span class="notExistsAvtoData">Ничего не найдено!</span></div>
            <?php } ?>
        </div>
      </div>
</div>
<?php echo $footer; ?>