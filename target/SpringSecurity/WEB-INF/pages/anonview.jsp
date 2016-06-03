<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="/style/style.css" rel="stylesheet" type="text/css" >
    <link rel ="stylesheet" href = "/style/bootstrap.min.css">
    <script src=" http://code.jquery.com/jquery-latest.min.js"></script>

    <meta charset ="urf-8">
    <title>anon</title>
</head>
<body>


<div class="container">


    <div class="row" id = "header">
        <div class = "span12">
            <div class = "logo1">
                <img src="/img/2.jpg" class="img-circle">
            </div>

            <div id="men"> <a class="btn btn-primary"  href="/">Главная</a>
                <a class="btn btn-primary" href="/dostavka">Топ</a>
                <a class="btn btn-primary" href="/contacts">Как купить</a>
                <div id = "userr2">
                    Здравствуйте, войдите для расширенных возможностей
                </div>
                <a class = "btn btn-success" href="/login"> Вход/Регистрация</a>

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

            <h2  align ="center"> Товары из категории: ${cat.category_name}</h2>

            <div class="catalog">
                <!----------------------------insert here ---------------------------------------->
                <c:forEach items="${products}" var = "products">
                    <div class="products-main">
                        <div class="product">
                            <h2><a href = "#">${products.description}</a></h2>
                            <div class="product-img"><a href = "#"><img src="/try/imgage/${products.id}" width="169" height="100" align="middle" /></a> </div>
                            <p class="price">${products.price}<span> грн  </span>

                               <div class="rows">
                                    <div class="row">
                                    <button class="open">Купить</button>
                                    <form id="myform" action="/" method="post">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Name</label>
                                            <input type="ema"  name ="name" >
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Phone</label>
                                            <input type="password" name = "phone" >
                                        </div>

                                        <button  class="ave" >Закрыть</button>
                                        <INPUT type="submit" id = "submit" class = "close" value="Заказать">

                                    </form>
                                </div>
                            </div>

                        </div>
                        <p class="bot-dot"></p>
                    </div>
                </c:forEach>
                <!---------------------  end of main div--------------------------------------------------------->


            </div>



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
<script type="text/javascript">
    $(document).ready(function() {

             $(function() {
                $('.row').on('click', '.open', function() {
                            $('.row form').hide();
                            $(this).parent().children('form').show(); });
                $('.row').on('click', '.close',
                        function(e) {
                            e.preventDefault();
                            $(this).closest('.row').find('.open').html('Куплено!');
                            $(this).closest('.row').find('.open').attr('disabled', true);
                            $(this).parent('form').html('Мы вам перезвоним!!!').delay(2000).toggle(500);
                        });


                $('.row').on('click',
                        '.ave',
                        function(e) {
                            e.preventDefault();
                            $(this).parent('form').hide();
                            $(this).closest('.row').find('.open').prop('disabled', false);
                        });
            });
    });
</script>



</body>

</html>