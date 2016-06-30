<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE  html>
<head>

    <link href="/style/style.css" rel="stylesheet" type="text/css" >
    <link rel ="stylesheet" href = "/style/bootstrap.min.css">


    <link rel ="stylesheet" href = "/style/add.css">
    <script src=" /js/jquery-1.11.1.min.js"></script>
    <script src=" /js/common.js"></script>

    <link rel="stylesheet" href="/libs/font-awesome-4.2.0/css/font-awesome.min.css" />


    <meta charset ="urf-8">
    <title>user page</title>
</head>
<body>


<div class="container">


    <div class="row" id = "header">
        <div class = "span12">
            <div class = "logo1">
                <img src="/img/2.jpg" class="img-circle">
            </div>

            <div id="men"> <a class="btn btn-primary"  href="/">Главная</a>
                <a class="btn btn-primary" href="/contacts" >Как купить</a>
                <a class="btn btn-primary" href="/basket">Корзина</a>

                <div id = "userr">
                    Привет,  ${pageContext.request.userPrincipal.name}
                </div>


                <a class = "btn btn-" href="/logout"> Logout</a>

            </div>

        </div>
    </div>

    <div class="row" id = "content">
        <div class="span3 sidebar">

            <div class="side1">

                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" id = "smenu">
                    <li><a tabindex="-1" href="/top/7">Топ продаж</a></li>
                    <li><a tabindex="-1" href="/top/1">Для девушек</a></li>
                    <li><a tabindex="-1" href="/top/2">Для мужчин</a></li>
                    <li><a tabindex="-1" href="/top/3">Для детей </a></li>
                    <li class="dropdown-submenu">
                        <a tabindex="-1" href="#">Для праздника</a>
                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="/top/4">День рождения</a></li>
                            <li><a tabindex="-1" href="/top/5">Новый год</a></li>
                        </ul>
                    </li>
                </ul>
            </div>


        </div>
        <div class="span8 text">

            <h2  align ="center"> Товары из категории: ${cat.category_name}</h2>



            <div class="catalog">


                <!----------------------------insert here ---------------------------------------->

                <c:forEach items="${products}" var = "products">
                    <div class="products-main">

                        <a class="cart" href="#">
                            <img class="normal" src="/img/shopping-cart.png"/>
                            <img class="hover" src="/img/shopping-cart-hover.png"/>

                        </a>
                        <div class="text-bottom">Добавить в корзину</div>
                        <div class="product">
                            <label for="item"><h2><a href = "#">${products.description}</a></h2></label><input id="item" name="name" value="${products.id}" type="text">
                            <div class="product-img"><a href = "#"><img src= "/try/imgage/${products.id}" width="169" height="100" align="middle" /></a> </div>
                            <p class="price2">${products.price}<span> грн</span>
                        </div>
                        <p class="bot-dot"></p>
                        <i class="fa fa-check-circle ok" aria-hidden="true"></i>
                    </div>
                </c:forEach>


                <!---------------------  end of main div--------------------------------------------------------->


            </div>

            <a href="#" title="Вернуться к началу" class="topbutton">^Наверх</a>
        </div>

        <div class="pagination" id = "navbar">
            <ul>
                <li><a href="#">Prev</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">Next</a></li>
            </ul>
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
        <div class="logo">
            <div class="logos">
                <img src="logo.png" height="70px">
            </div>
        </div>
    </div>


</div>







</body>

</html>