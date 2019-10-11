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
      
      <div class="box box_contacts">
        <div class="box__inner">
          <h1 class="box__title">Контакты</h1>
<          <script>
            var initConfig = {
              staticPath: '/Project/static/',
              placemarks: [{
                coords: [47.235864, 39.612758],
                balloon: {
                  header: 'ШИННЫЙ МИР',
                  body: 'г. <nobr>Ростов-а-Дону</nobr>, ул. Малиновского, 33б ( Фортуна-1 ), павильон 47'
                },
                icon: {
                  path: '../Project/static/img/assets/contacts/geoPoint.png' /*tpa=http://shinnyi-mir.ru/Project/static/img/assets/contacts/geoPoint.png*/ ,
                  size: [45, 65],
                  offset: [-22.5, -65]
                }
              }]
            };
          </script>
          <div class="contacts">
            <div class="contacts__column">
              <div class="contactsInfo" itemscope itemtype="http://schema.org/Organization">
                <div class="contactsInfo__item">
                  <div class="contactsInfo__name">
                    <svg class="icon__phone" width="9px" height="9px">
                      <use xlink:href="#phones2">
                          <svg id="phones2" viewBox="0 0 9 9" width="100%" height="100%">
      <path d="M2.4 0c.3.1.4.3.4.6 0 .6.1 1.1.3 1.7.1.2 0 .3-.1.5l-1 1c-.1.1-.1.1 0 .2.8 1.4 1.8 2.5 3.2 3.2l1-1s.1-.1.2-.1c0-.2.2-.2.4-.1.6.2 1.1.3 1.7.3.3 0 .4.1.5.4v2l-.3.3H8c-.3 0-.6-.1-.8-.1-1.7-.3-3.1-1-4.4-2.1C1.4 5.5.5 3.9.1 2c0-.4-.1-.7-.1-1V.3L.3 0h2.1zM9 4.5H8C7.8 2.4 6.6 1.2 4.5 1V0h.4c.1 0 .2 0 .3.1 1.8.3 3 1.4 3.6 3.1.1.3.1.6.2.9v.4z"></path>
      <path d="M4.5 3V2C5.8 1.9 7 3.1 7 4.5H6c0-.4-.1-.8-.4-1.1-.3-.3-.7-.4-1.1-.4z"></path>
    </svg>
                      </use>
                    </svg>
                    <span>Телефоны:</span>
                  </div>
                  <div class="contactsInfo__value icons">
                    <span class="contactsInfo__icons">
                      <svg class="whatsup" width="20px" height="19px">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#whatsup"></use>
                      </svg>
                      <svg class="viber" width="18px" height="19px">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#viber"></use>
                      </svg>
                    </span>
                    <a href="tel:89281122132">
                      <span itemprop="telephone">8 928 11 22 132</span>
                    </a>
                  </div>
                  <div class="contactsInfo__value">
                    <a href="tel:89054538308">8 905 453 83 08</a>
                  </div>
                  <div class="contactsInfo__value">
                    <a href="tel:88633112801">8 863 311 28 01</a>
                  </div>
                </div>
                <div class="contactsInfo__item">
                  <div class="contactsInfo__name">
                    <svg class="icon__address" width="8px" height="10px">
                      <use xlink:href="#addressw">
                          <svg id="addressw" viewBox="0 0 8 10" width="100%" height="100%">
      <path d="M8 3.5v.7c-.1.5-.3.9-.6 1.3-.6.9-1.3 1.8-1.9 2.6-.4.6-.8 1.2-1.2 1.7-.1.1-.1.2-.2.2H4c-.1 0-.2-.1-.2-.2C2.7 8.4 1.6 7 .6 5.5.3 5 .1 4.5 0 3.9v-.8c.1-.4.2-.9.4-1.2C1 1.1 1.8.5 2.7.2c.4-.1.8-.2 1.1-.2h.6c.4 0 .7.1 1 .2.9.4 1.6.9 2.1 1.6.3.5.5 1 .5 1.5v.2zM4 9.1c1-1.4 1.9-2.7 2.8-4 .4-.6.6-1.3.5-2-.1-.4-.2-.8-.5-1.2C6.1 1.1 5.2.7 4.2.6h-.8c-.7.2-1.3.4-1.8.9C.9 2.2.5 3 .7 4.1c.1.4.2.8.5 1.1C2.1 6.5 3 7.8 4 9.1z"></path>
      <path d="M2.1 3.6c0-.6.3-1 .8-1.4.2-.2.5-.3.9-.3.6-.1 1.2.1 1.7.6.2.3.4.6.4.9.1.6-.2 1.1-.7 1.5-.3.2-.6.4-1 .4-.6.1-1.2-.1-1.6-.6-.3-.2-.4-.5-.5-.9v-.2zM4 4.7c.3 0 .6-.1.9-.3.4-.4.5-1 .1-1.4-.2-.3-.5-.5-.8-.5-.4 0-.7 0-1 .3-.5.4-.6 1-.2 1.5.3.3.6.4 1 .4z"></path>
    </svg>
                      </use>
                    </svg>
                    <span>Адрес:</span>
                  </div>
                  <div class="contactsInfo__value">
                    <span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                      <span itemprop="addressLocality"> г. Ростов-на-Дону </span>
                      <span itemprop="streetAddress">ул. Малиновского, 33б</span>
					  Павильон №43
                    </span>
                  </div>
                </div>
                <div class="contactsInfo__item">
                  <div class="contactsInfo__name">
                    <svg class="icon__email" width="13px" height="9px">
                      <use xlink:href="#emails2">
                          <svg id="emails2" viewBox="0 0 13 9" width="100%" height="100%">
      <path d="M12.6 9H.3C.1 9 0 8.9 0 8.7V2.5h.2c2 .8 4.1 1.6 6.1 2.5.2.1.3.1.5 0 2-.8 3.9-1.6 5.9-2.4.1 0 .2-.1.3-.1v6.1c0 .3-.2.4-.4.4z"></path>
      <path d="M13 .4v1l-.6.3-5.7 2.4c-.1.1-.3.1-.4 0-2-.9-4-1.7-6.1-2.6 0 0-.1 0-.2-.1v-1C0 .2.1 0 .3 0h12.3c.2 0 .4.2.4.4z"></path>
    </svg>
                      </use>
                    </svg>
                    <span>e-mail:</span>
                  </div>
                  <div class="contactsInfo__value">
                    <span itemprop="email">shinnyi-mir@yandex.ru</span>
                  </div>
                </div>
              </div>
              <div id="contactsMap" class="contactsMap">
				<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A53bc02b826484daa9d4bd2cd1fce8d072a0546ccc67ae9b24879fbfc81181cd3&amp;width=100%25&amp;height=574&amp;lang=ru_RU&amp;scroll=true"></script>
              </div>
            </div>
            <div class="contacts__column">
              <h2 class="contacts__title">Обратная связь</h2>
              <form id="contacts__feeadback" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form form_feedback">
                <label class="form__label form__label_text ">
                  <span class="form__caption">
                    <svg class="icon__name" width="9px" height="9px">
                      <use xlink:href="#names">
                          <svg id="names" viewBox="0 0 9 9" width="100%" height="100%">
      <path d="M0 7.5c.6-1.1 1.7-1.4 2.9-1.7 1.5-.4 3-.2 4.5.4l.6.3c.5.2.8.6 1 1.1v1.2C9 9 9 9 8.9 9H.1C0 9 0 9 0 8.8V7.5zM4.9 0c0 .1.1.1.2.1 1.1.3 1.8 1.3 1.7 2.5-.1 1.1-1.1 1.9-2.2 2-1.1 0-2-.8-2.2-1.9C2.1 1.6 2.7.5 3.8.1c.1 0 .2 0 .3-.1h.8z"></path>
    </svg>
                      </use>
                    </svg>
                    <span>Имя</span>
                  </span>
                  <div class="form__fieldWrapper">
                    <input type="text" required="required" name="name" class="form__field">
                    <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
                  </div>
                </label>
                <label class="form__label form__label_text phone">
                  <span class="form__caption">
                    <svg class="icon__phone" width="9px" height="9px">
                      <use xlink:href="#phones">
                          <svg id="phones" viewBox="0 0 9 9" width="100%" height="100%">
      <path d="M2.4 0c.3.1.4.3.4.6 0 .6.1 1.1.3 1.7.1.2 0 .3-.1.5l-1 1c-.1.1-.1.1 0 .2.8 1.4 1.8 2.5 3.2 3.2l1-1s.1-.1.2-.1c0-.2.2-.2.4-.1.6.2 1.1.3 1.7.3.3 0 .4.1.5.4v2l-.3.3H8c-.3 0-.6-.1-.8-.1-1.7-.3-3.1-1-4.4-2.1C1.4 5.5.5 3.9.1 2c0-.4-.1-.7-.1-1V.3L.3 0h2.1zM9 4.5H8C7.8 2.4 6.6 1.2 4.5 1V0h.4c.1 0 .2 0 .3.1 1.8.3 3 1.4 3.6 3.1.1.3.1.6.2.9v.4z"></path>
      <path d="M4.5 3V2C5.8 1.9 7 3.1 7 4.5H6c0-.4-.1-.8-.4-1.1-.3-.3-.7-.4-1.1-.4z"></path>
    </svg>
                      </use>
                    </svg>
                    <span>Телефон</span>
                  </span>
                  <div class="form__fieldWrapper">
                    <input type="text" required="required" name="phone" class="form__field">
                  </div>
                </label>
                <label class="form__label form__label_text ">
                  <span class="form__caption">
                    <svg class="icon__email" width="13px" height="9px">
                      <use xlink:href="#emails">
                          <svg id="emails" viewBox="0 0 13 9" width="100%" height="100%">
      <path d="M12.6 9H.3C.1 9 0 8.9 0 8.7V2.5h.2c2 .8 4.1 1.6 6.1 2.5.2.1.3.1.5 0 2-.8 3.9-1.6 5.9-2.4.1 0 .2-.1.3-.1v6.1c0 .3-.2.4-.4.4z"></path>
      <path d="M13 .4v1l-.6.3-5.7 2.4c-.1.1-.3.1-.4 0-2-.9-4-1.7-6.1-2.6 0 0-.1 0-.2-.1v-1C0 .2.1 0 .3 0h12.3c.2 0 .4.2.4.4z"></path>
    </svg>
                      </use>
                    </svg>
                    <span>E-mail</span>
                  </span>
                  <div class="form__fieldWrapper">
                    <input type="email" name="email" class="form__field">
                    <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
                  </div>
                </label>
                <label class="form__label form__label_textarea ">
                  <span class="form__caption">
                    <svg class="icon__message" width="9px" height="9px">
                      <use xlink:href="#messages">
                          <svg id="messages" viewBox="0 0 9 9" width="100%" height="100%">
      <path d="M9 1.6v4c0 .3-.1.6-.3.9-.4.5-.8.8-1.5.8H6c-.2 0-.3 0-.4.1-.6.5-1.3.9-2 1.4-.1.1-.3.1-.4.2-.1-.1 0-.2 0-.3l.3-1.2c.1-.2 0-.2-.2-.2H1.9C1 7.3.4 6.9.1 6.1 0 6 0 5.8 0 5.6v-4c0-.3.1-.6.3-.9C.6.3.9 0 1.5 0h6c.4 0 .8.2 1.1.5.2.3.4.6.4 1.1z"></path>
    </svg>
                      </use>
                    </svg>
                    <span>Сообщение</span>
                  </span>
                  <div class="form__fieldWrapper">
                    <textarea name="message" class="form__field"></textarea>
                    <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
                  </div>
                </label>
                <div class="form__fieldWrapper" style="margin: 20px;">
                  <center> Нажимая кнопку "Оформить заказ", я принимаю условия Пользовательского соглашения и даю своё согласие на
                    <a target="_blank" style="color: #555; text-decoration: underline;" href="/dwnl/privacy.pdf">обработку моих персональных данных</a>
                  </center>
                </div>
                <div class="form__label form__label_button ">
                  <button type="submit" class="form__button"> Отправить
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="container containerContactsBoxInfo">
          <div class="contactsInfoLeftColumn">
            <article>
              <h2>Схема проезда</h2>
            </article>

          </div>
          <div class="contactsInfoRightColumn">
            <div class="contactsInfoItem">
              <article>
                <h3 class="contactsInfoItemTItle">График работы:</h3>
                <ul>
                  <li>с 9:00 до 18:00</li>
                  <li>без перерывов и выходных</li>
                </ul>
              </article>
            </div>
            <div class="contactsInfoItem">
              <article>
                <h3 class="contactsInfoItemTItle">Реквизиты:</h3>
                <ul>
                  <li>ИП Чеботуров А. Ю.</li>
                  <li>ИНН 616803508677</li>
                  <li>ОГРН 318619600150900</li>
                </ul>
              </article>
            </div>
          </div>
        </div>
      </div>
    </div>
<?php echo $footer; ?>
