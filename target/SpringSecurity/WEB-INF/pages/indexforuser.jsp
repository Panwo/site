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
     <a class="btn btn-primary" href="/basket">Корзина</a>
     <div id = "userr">
         Привет,  ${pageContext.request.userPrincipal.name}
     </div>
     <a class = "btn btn-" href="/logout"> Logout</a>



  <div id="bar">


      <div id="container">
<!----------------------------------
            <div id="loginContainer">
                <a href="#" id="loginButton"><span>Login</span><em></em></a>
                <div style="clear:both"></div>
                <div id="loginBox">                
                    <form id="loginForm">
                        <fieldset id="body">
                            <fieldset>
                                <label for="email">Email Address</label>
                                <input type="text" name="email" id="email" />
                            </fieldset>
                            <fieldset>
                                <label for="password">Password</label>
                                <input type="password" name="password" id="password" />
                            </fieldset>
                            <input type="submit" id="login" value="Sign in" />
                            <label for="checkbox"><input type="checkbox" id="checkbox" />Remember me</label>
                        </fieldset>
                        <span><a href="#">Forgot your password?</a></span>
                    </form>
                </div>
            </div>
            <!-- Login Ends Here -->

        </div>
    </div>
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
             <li><a tabindex="-1" href="#">Праздничные акции</a></li>

                 
</ul>
          </div>
          

   </div>
        <div class="span8 text">

            <h3 align = "center">Магазин подарков              "Презентория"</h3>
            <div class = wrt>
            <h4 align ="center">Подарки — мир позитива, ярких впечатлений  и веселых праздников!</h4>
            <p> Мы с удовольствием предоставляем наши  оригинальные подарки: серьезные и практичные, красивые<br> и романтичные, в которые вложена частичкой праздника.</p> 

    
    <p>Заглядывая в разные разделы сайта, вы найдете еще много разных сувениров и приятных мелочей, которые можно преподнести, в качестве дополнения к основному подарку. Дорогой или не очень подарок — это не важно, главное — подарить приятные эмоции. А они, как правило, запоминаются надолго.</p>
    
    <h4>Выбрав интернет-магазин подарков Презентория, Вам гарантирована:</h4>
    <p>быстрая доставка, грамотное обслуживание. А самое главное сегодня — возможность доставки подарков во все регионы Украины.
Интернет-магазин подарков «Презентория» способен превратить любое важное событие в настоящий праздник, сделать незабываемыми встречи с друзьями и коллегами, или просто поднять настроение.
</p>
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
     </body>

</html>