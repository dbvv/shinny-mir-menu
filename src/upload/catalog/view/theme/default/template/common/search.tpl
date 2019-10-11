<div id="search">
<form action="" method="post" onsubmit="return false;" class="form form_topBoxSearch">
              <label class="form__label form__label_text ">
                <div class="form__fieldWrapper">
                  <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form__field form__fieldSearch search" />
                </div>
              </label>
              <div class="form__label form__label_button ">
                <button type="submit" class="form__button">
                  <svg class="icon__search" width="20px" height="20px">
                      <use xlink:href="#searchl">
                          <svg id="searchl" viewBox="0 0 20 20" width="100%" height="100%">
                              <path d="M19.3 20c-.2 0-.3-.1-.4-.2l-6-6-.5-.5c-.1-.1-.1-.1-.2 0-.6.5-1.3.9-2.1 1.2-.5.2-1.1.4-1.8.5H7c-1.6-.1-3.1-.7-4.3-1.7-1.3-1.1-2.1-2.4-2.5-4-.1-.5-.2-1-.2-1.5v-.6c0-.5.1-1 .2-1.4C.7 3.6 2 1.9 4.1.8c1-.5 2-.8 3.2-.8h.4c.6 0 1.2.1 1.8.3 1.5.4 2.7 1.2 3.7 2.4.9 1 1.4 2.2 1.7 3.5.1.5.1 1.2.1 1.8-.1 1.6-.7 3-1.7 4.2-.1.1 0 .1 0 .2 1.8 1.8 3.5 3.6 5.3 5.3l1.1 1.1c.1.1.2.3.3.4v.2c0 .3-.2.4-.5.5 0 .1-.2.1-.2.1zM1.2 7.5c0 3.5 2.8 6.3 6.3 6.3s6.3-2.8 6.3-6.3S11 1.2 7.5 1.2 1.2 4 1.2 7.5z"></path>
                          </svg>    
                      </use>
                  </svg>
                </button>
              </div>
            </form>
</div>
<script>
    $('#search').find('.form__button').on('click', function() {
		var url = $('base').attr('href') + 'index.php?route=product/search';

		var value = $('#search input[name=\'search\']').val();

		if (value) {
			url += '&search=' + encodeURIComponent(value);
			location = url;
		}

	});

	$('#search').on('keydown', function(e) {
		if (e.keyCode == 13) {
			$('#search').find('.form__button').trigger('click');
		}
	});
</script>