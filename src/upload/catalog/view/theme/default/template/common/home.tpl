<?php echo $header; ?>
<?php echo $content_top; ?>
    <div class="box box_selection">
      <div class="box__inner">
        <h2 class="box__title">Подбор шин и дисков</h2>
        <div class="selection">
          <form action="" method="get" id="filt">
          <input type="hidden" name="fil" value="1" />
          <div class="selection__item it1">
            <div class="selection__title">
              Шины </div>
            <div class="selection__by">
              По параметрам </div>
            <div class="form form_selection">
              <label class="form__label form__label_select ">
                <div class="form__fieldWrapper"><span class="lak">Производитель</span>
                  <select name="manufacturers" class="tiresWidth">
                    <option value="">Производитель</option>
                    <?php foreach ($brends as $brend) { ?>
                        <option value="<?php echo $brend['id']; ?>"><?php echo $brend['name']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </label>
              <label class="form__label form__label_select ">
                <div class="form__fieldWrapper"><span class="lak">Ширина</span>
                  <select name="12-shirina" class="tiresWidth">
                    <option value="">Ширина</option>
                    <?php if (isset($shirina) && count($shirina)) { ?>                    
                    <?php foreach ($shirina as $s) { ?>
                        <option value="<?php echo $s['text']; ?>"><?php echo $s['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </label>
              <label class="form__label form__label_select ">
                <div class="form__fieldWrapper"><span class="lak">Высота</span>
                  <select name="13-vysota" class="tiresWidth">
                    <option value="">Высота</option>
                    <?php if (isset($visota) && count($visota)) { ?>                    
                    <?php foreach ($visota as $v) { ?>
                        <option value="<?php echo $v['text']; ?>"><?php echo $v['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </label>
              <label class="form__label form__label_select ">
                <div class="form__fieldWrapper"><span class="lak">Диаметр</span>
                  <select name="19-diametr" class="tiresWidth">
                    <option value="">Диаметр</option>
                    <?php if (isset($radius) && count($radius)) { ?>                    
                    <?php foreach ($radius as $r) { ?>
                        <option value="<?php echo $r['text']; ?>"><?php echo $r['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </label>
              <label class="form__label form__label_select ">
                <div class="form__fieldWrapper"><span class="lak">Сезон</span>
                  <select name="18-sezon" class="tiresSeason">
                    <option value="">Сезон</option>
                    <option value="Лето">Лето</option>
                    <option value="Зима">Зима </option>
                  </select>
                </div>
              </label>
<!--              <div class="form__group form__group_spikes">
                <label class="form__label form__label_checkbox ">
                  <input type="checkbox" name="spikes" value="1" class="form__checkbox">
                  <i class="form__checkboxBox"></i>
                  <span class="form__caption">С шипами</span>
                </label>
                <label class="form__label form__label_checkbox ">
                  <input type="checkbox" name="friction" value="1" class="form__checkbox">
                  <i class="form__checkboxBox"></i>
                  <span class="form__caption">Без шипов</span>
                </label>
              </div> 
-->
              <div class="form__label form__label_button ">
                <button type="submit" class="form__button">
                  Подобрать
                </button>
              </div>
            </div>
          </div>
          <div class="selection__item it2">
            <div class="selection__title">
              Диски </div>
            <div class="selection__by">
              По параметрам </div>
            <div class="form form_selection">
                <label class="form__label form__label_select ">
                <div class="form__fieldWrapper"><span class="lak">Производитель</span>
                  <select name="manufacturers" class="tiresWidth">
                    <option value="">Производитель</option>
                    <?php foreach ($brends2 as $brend) { ?>
                        <option value="<?php echo $brend['id']; ?>"><?php echo $brend['name']; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </label>
              <label class="form__label form__label_select ">
                <div class="form__fieldWrapper"><span class="lak">Диаметр</span>
                  <select name="19-diametr" class="tiresWidth">
                    <option value="">Диаметр</option>
                    <?php if (isset($radiusd) && count($radiusd)) { ?>                    
                    <?php foreach ($radiusd as $rd) { ?>
                        <option value="<?php echo $rd['text']; ?>"><?php echo $rd['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </label>
              <label class="form__label form__label_select ">
                <div class="form__fieldWrapper"><span class="lak">Крепежные отверстия PCD</span>
                  <select name="20-krepezhnye-otverstiya" class="tiresWidth">
                    <option value="">Крепежные отверстия PCD</option>
                    <?php if (isset($krepezh) && count($krepezh)) { ?>                    
                    <?php foreach ($krepezh as $k) { ?>
                        <option value="<?php echo $k['text']; ?>"><?php echo $k['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </label>
              <div class="form__label form__label_button ">
                <button type="submit" class="form__button">
                  Подобрать
                </button>
              </div>
            </div>
          </div>
          
          <div class="selection__item hj">
            <div class="selection__title">
              Шины/Диски </div>
            <div class="selection__by">
              По марке авто </div>
            <div class="form form_selection form_selectionAuto">
              <label class="form__label form__label_select cr">
                <div class="form__fieldWrapper"><span class="lak">Марка</span>
                  <select name="carMark" data-direction="tdModel" data-direction-path="true" class="tdBrand" onchange="model(this.value);">
                    <option value="">Марка</option>
                    <?php echo $vendor; ?>
                  </select>
                </div>
              </label>
              <label class="form__label form__label_select cr2">
                <div class="form__fieldWrapper disabled"><span class="lak">Модель</span>
                  <select name="carModel" data-direction="tdYear" data-direction-path="true" class="tdModel" id="car" disabled="disabled">
                    <option value="">Модель</option>
                  </select>
                </div>
              </label>
              <label class="form__label form__label_select cr3">
                <div class="form__fieldWrapper disabled"><span class="lak">Год</span>
                  <select name="year" data-direction="tdModification" data-direction-path="true" class="tdYear" id="god" disabled="disabled">
                    <option value="">Год</option>
                  </select>
                </div>
              </label>
              <label class="form__label form__label_select cr4">
                <div class="form__fieldWrapper disabled"><span class="lak">Модификация</span>
                  <select name="mod" data-direction="button" class="tdModification" data-direction-path="true" data-direction-final="true"
                    disabled="disabled">
                    <option value="">Модификация</option>
                  </select>
                </div>
              </label>
              <div class="form__label form__label_button ">
                <a href="#" class="form__button2" disabled="disabled">
                  Подобрать
                </a>
              </div>
          </div>
        </div>
        </form>
      </div>
    </div>
    </div>
    <?php echo $content_bottom; ?>
    <div class="box box_callorder">
      <div class="box__inner">
        <h2 class="box__title">Хотите получить
          <br> бесплатную консультацию?</h2>
        <div class="callorder">
          <p class="callorder__text"> Оставьте свои контактные данные и&nbsp;мы&nbsp;вскоре Вам перезвоним
          </p>
          <form id="callorder" method="post" class="form form_callorder">
            <label class="form__label form__label_text phone">
              <div class="form__fieldWrapper" style="height: 50px">
                <input type="text" required="required" name="tel" placeholder="Введите номер телефона" class="form__field form__phone">
              </div>
            </label>
            <div class="form__label form__label_button ">
              <input type="submit" class="ffr" value="Заказать консультацию" />
            </div>
          </form>
        </div>
      </div>
    </div>

    <script>
	$(document).on('click', '.ffr', function(e){
		e.preventDefault();
		$('.rej').remove();
		if ($('.form__phone').val() != '') {
	    $.ajax({
          type: 'POST',
          url: 'index.php?route=common/form',
          data: $('#callorder').serialize(),
          success: function(data) {
            $('.callorder').after('<center>Ваша заявка принята!</center>');
          }
        });
		} else {
			$('.form__phone').after('<div class="rej" style="color:red">Заполните телефон</div>');
		}
		return false;
    });
    var filt = [];
    $(document).on('click', '.it1 .form__button', function(){
        $('.it1 select').each(function(){
            if ($(this).find('option:selected').val() != '')
            filt.push($(this).attr('name') + '[' + $(this).find('option:selected').val() + ']');
        });
        location = '/tires/' + (filt != '' ? '&mfp=' + filt : '');
        return false;
    });
     $(document).on('click', '.it2 .form__button', function(){
        $('.it2 select').each(function(){
            if ($(this).find('option:selected').val() != '')
            filt.push($(this).attr('name') + '[' + $(this).find('option:selected').val() + ']');
        });
        location = '/discs/' + (filt != '' ? '&mfp=' + filt : '');
        return false;
    });
    function model(t) {
    $.ajax({
      type: 'POST',
      url: 'index.php?route=common/home/getModel',
      data: 'model=' + t,
      success: function(json) {
          $('#car').append(json);
          $('.cr2 .form__fieldWrapper').removeClass('disabled');
		  $('.cr2 .form__fieldWrapper select').removeAttr('disabled');
      }
    });
    }
    $(document).on('change', '#car', function(){
    $.ajax({
      type: 'POST',
      url: 'index.php?route=common/home/getGod',
      data: 'car=' + $('#car').val() + '&model=' + $('.tdBrand option:selected').val(),
      success: function(json) {
          $('.tdYear').append(json);
          $('.cr3 .form__fieldWrapper').removeClass('disabled');
		  $('.cr3 .form__fieldWrapper select').removeAttr('disabled');
      }
    });
    });
    $(document).on('change', '#god', function(){
    $.ajax({
      type: 'POST',
      url: 'index.php?route=common/home/getMod',
      data: 'car=' + $('#car').val() + '&model=' + $('.tdBrand option:selected').val() + '&god=' + $('#god option:selected').val(),
      success: function(json) {
          $('.tdModification').append(json);
          $('.cr4 .form__fieldWrapper').removeClass('disabled');
		  $('.cr4 .form__fieldWrapper select').removeAttr('disabled');
      }
    });
    });
    $(document).on('change', '.tdModification', function(){
        $('.form__button2').removeAttr('disabled');
    });
    $(document).on('click', '.form__button2', function(){
        location = 'index.php?route=product/podbor&vendor=' + $('.tdBrand option:selected').val() + '&car=' + $('#car option:selected').val() + '&year=' + $('#god option:selected').val() + '&mod=' + $('.tdModification option:selected').val();
        return false;
    });
	$(document).on('change', '.form__fieldWrapper select', function(){
	    $(this).prev().text($(this).find('option:selected').text());
	});
    </script>
<?php echo $footer; ?>