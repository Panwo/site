<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset ="urf-8">
    <!----------------классический-------------------------------->

    <title>Подарки</title>
    <link href="/style/style.css" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" href="/style/styleff.css" />
    <link rel ="stylesheet" href = "/style/bootstrap.min.css">

</head>
<body>
<div class="container">
    <div class="row" id = "header">
        <div class = "span12">
            <div class = "logo1">
                <img src="img/2.jpg" class="img-circle">
            </div>

            <div id="men">
                <a class="btn btn-primary"  href="/">Главная</a>
                <a class="btn btn-primary" href="/top/7">Топ</a>
                <a class="btn btn-primary" href="/contacts">Как купить</a>
                <a class="btn btn-success" href="/login">Вход/регистрация</a>

                <div id="bar">


                    <div id="container">


                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row" id = "content">

        <div class="span3 sidebar">

            <div class="side1">
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" id = "smenu">
                    <li><a tabindex="-1" href="/top/1">Для девушек</a></li>
                    <li><a tabindex="-1" href="/top/2">Для мужчин</a></li>
                    <li><a tabindex="-1" href="/top/3">Для детей </a></li>
                    <li class="dropdown-submenu">
                        <a tabindex="-1" href="#">Для праздника</a>
                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="/top/4">День рождения</a></li>
                            <li><a tabindex="-1" href="/top/5">Новый год</a></li>


                        </ul>
                    <li><a tabindex="-1" href="#">Праздничные акции</a></li>


                </ul>
            </div>


        </div>
        <div class="span8 text">

           <p>Как заказать подарочек?</p>

            <p>Жмите на интересующий Вас товар и он переместится в виртуальную корзину. Далее можно продолжать просмотр остальных подарочков. Таким образом, в корзину Вы можете добавить несколько позиций.
                Когда Вы уже готовы к покупке, заходите на страничку Вашей корзины . Здесь Вы можете изменить количество товаров.  Общая сумма заказа отображается сразу после таблицы.
                Для заключительного действия проверьте, пожалуйста, адрес доставки и телефон, после чего нажимайте на "Оформить заказ".
                Все. Заказ принят. Наш менеджер свяжется с Вами в ближайшее время!</p>

            <p>Как оплатить подарочек?</p>

           <br> Оплата в офисе

            Вы можете оплатить Ваш заказ в офисе.

           <p> Электронные деньги

               После создания заказа у Вас появится позможность оплатить заказ при помощи:

               Privat24
               VISA/Master Card
               НСМЭП
               LIQPAY-ГРН, LIQPAY-USD

               Yandex.Деньги
               Сразу после оплаты статус заказа изменится на "оплачен" и наш администратор получит уведомление об оплате заказа. Это наиболее быстрый способ оплаты заказа.
           </p>

           <p> Наличный расчет при получении заказа

               Это возможность  оплаты заказа на Новой почте при получении.
               * Мы не отправляем наложенным платежом:  заказы на сумму менее 250 грн, изделия из шоколада, стекла, подарки, изготовленные по индивидуальному заказу, цветы.
               Также мы оставляем за собой право на свое усмотрение просить клиента о частичной  или полной предварительной оплате заказа.
           </p>


            <a href="#" title="Вернуться к началу" class="topbutton">^Наверх</a>
        </div>




    </div>

    <div id = "footer">

        <div class="fam"> Парамонов Владимир


        </div>

        <script type="text/javascript">(function() {
            if (window.pluso)if (typeof window.pluso.start == "function") return;
            if (window.ifpluso==undefined) { window.ifpluso = 1;
                var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
                s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
                s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
                var h=d[g]('body')[0];
                h.appendChild(s);
            }})();</script>


        <div class="pluso" data-background="none;" data-options="medium,square,line,horizontal,counter,sepcounter=1,theme=14" data-services="vkontakte,facebook,google,email"></div>

        <div class="adressa">
            <a class="c__w_y" href="/content/7-contacts/"     rel="nofollow">Ждём Вас по адресу</a>
            <div class  = "blockkon">
                <span class="b">Ул. Банковая, 6</span>
                , 2-й этаж

                Тел.:
                <span class="b">+38(093)9866036</span>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="b">+38(095) 740-78-37</span>
                <br>
                Пн–Сб: 10:00-20:00, Вс: 10:00-19:00

            </div>
        </div>

    </div>

</div>
</body>

</html>