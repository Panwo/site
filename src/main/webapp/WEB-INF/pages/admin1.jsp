<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!--[if lt IE 7]><html lang="ru" class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html lang="ru" class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html lang="ru" class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><!-->
<html lang="ru">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Создание адаптивного сайта - ПРИМЕР</title>
	<meta name="description" content="Создание адаптивного сайта" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="shortcut icon" href="favicon.png" />
	<link rel="stylesheet" href="/libs/bootstrap/bootstrap-grid-3.3.1.min.css" />
	<link rel="stylesheet" href="/libs/font-awesome-4.2.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="/libs/fancybox/jquery.fancybox.css" />
	<link rel="stylesheet" href="/libs/owl-carousel/owl.carousel.css" />
	<link rel="stylesheet" href="/libs/countdown/jquery.countdown.css" />
	<link rel="stylesheet" href="/style/new/fonts.css" />
	<link rel="stylesheet" href="/style/new/main.css" />
	<link rel="stylesheet" href="/style/new/media.css" />
	
	
	 <link rel ="stylesheet" href = "/style/new/reveal.css">
    <link rel ="stylesheet" href = "/style/new/form-open.css">
	
	
</head>
<body>
	<header class="top_header">
		<div class="header_topline">
			<div class="container">
				<div class="col-md-12">
					<div class="row">
						<button class="auth_buttons hidden-md hidden-lg hidden-sm"><i class="fa fa-user"></i></button>
						<div class="top_links">
							<a href="//webdesign-master.ru" target="_blank">Вход</a> / 
							<a href="//webdesign-master.ru" target="_blank">Регистрация</a>
						</div>
						<div class="soc_buttons">
							<a href="//webdesign-master.ru" target="_blank"><i class="fa fa-vk"></i></a>
							<a href="//webdesign-master.ru" target="_blank"><i class="fa fa-facebook-square"></i></a>
							<a href="//webdesign-master.ru" target="_blank"><i class="fa fa-twitter"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="col-md-12">
				<div class="row">
					<a href="//webdesign-master.ru" target="_blank" class="logo">Презентория</a>
					<nav class="maian_mnu clearfix">
						<button class="main_mnu_button hidden-md hidden-lg"><i class="fa fa-bars"></i></button>
						<ul>
							<li class="active"><a href="//webdesign-master.ru" target="_blank">Главная</a></li>
							<li><a href="//webdesign-master.ru" target="_blank">Топ продаж</a></li>
							<li><a href="//webdesign-master.ru" target="_blank">Для мужчин</a></li>
							<li><a href="//webdesign-master.ru" target="_blank">Для девушек</a></li>
							<li><a href="//webdesign-master.ru" target="_blank">Для детей</a></li>
							<li><a href="//webdesign-master.ru" target="_blank">VIP</a></li>
							<li><a href="//webdesign-master.ru" target="_blank">День рождения</a></li>
							<li><a href="//webdesign-master.ru" target="_blank">Новый год</a></li>
							
						</ul>
						
					</nav>
				
					<hr>
				</div>
			</div>
		</div>
	</header>
	
	<section class="main_content">
		<div class="container">
			<div class="row">
			
			
			
			     
				<div class="col-md-9">
				 <div class="topmarg"></div>
					<div class="content-text">
						
						<div class="blog_item">



							<c:forEach begin="0" end="${iter}" >

								<div class="row">
									<div class="con col-md-12"></div>

									<c:forEach begin="0" end="2" >
										<c:if test="${a ge 0}">
											<div class="col-md-3 marg">
												<h3><a href="//webdesign-master.ru" target="_blank">${products[a].description}  <input type="checkbox" name="Delete[]" class="cb" value="${products[a].id}" ></a></h3>

												<a href="//webdesign-master.ru" target="_blank"><img src= "/try/imgage/${products[a].id}" alt="alt"></a>
												<p>${products[a].price}</p>

											</div>
										</c:if>
										<c:set var="a" value="${a-1}"/>
									</c:forEach>

								</div>
							</c:forEach>


						</div>
				</div>

				</div>
				

				
				<div class="col-md-3">
					<aside class="right_aside">
					
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" id = "smenu">
                    <li><a tabindex="-1" href="#" data-reveal-id="myModal1">Добавить товары</a></li>
                    <li><a tabindex="-1" id="delete_product"  href="#">Удалить выбранные</a></li>
                    <li><a tabindex="-1" href="/grouppp" data-reveal-id="myModal">Добавить группу </a></li>
                    <li><a tabindex="-1" href="/showall">Список юзеров </a></li>
                   <li><a tabindex="-1" href="/showorders">Список заказов </a></li>


                                </ul>
                        </ul>

                </ul>

            
					</aside>
					
					
				</div>
			</div>
		</div>
		
		
		 <div id="myModal" class="form-open reveal-modal">
                    <div id = "backs">

                        <br>
                        Существующие категории:
                        </br>
                        <select name = "category">
                            <c:forEach items="${categories}" var="category">
                                <option value="${category.id}">${category.category_name}</option>
                            </c:forEach>
                        </select>
                        <br>
                        <div id = "form">

                            <FORM name="contact_form"   action="/addgroup" method="post" >

                                <H2>Добавить продукт в базу данных</H2>

                                Имя категории:
                                </br>

                                <INPUT type="text" name="category_name">

                                <P><INPUT type="submit"  value="Добавить категорию!"></P>

                            </FORM>


                        </div>
                    </div>

                </div>

                <div id="myModal1" class="form-open reveal-modal">
                    <div id = "backs">
                        <div id = "form">

                            <FORM name="contact_form"  enctype="multipart/form-data" action="/addproduct"  method="post" >

                                <H2>Добавить продукт в базу данных</H2>
                                <br>
                                Категория:
                                </br>
                                <select name = "category">
                                    <c:forEach items="${categories}" var="category">
                                        <option value="${category.id}">${category.category_name}</option>
                                    </c:forEach>
                                </select>
                                <br>
                                Описание:
                                </br>
                                <INPUT type="text" name="description">

                                <P>
                                    Цена
                                </p>

                                <INPUT type="text" name="price">
                                <br>
                                Изображение:
                                </br>
                                <input type="file" name="photo"  />

                                </br>
                                <P><INPUT type="submit"  value="Добавить товар!"></P>

                            </FORM>


                        </div>
                    </div>
                </div>

            <div id ="m"></div>
		<div class="header_bottop">
			    
			    
			</div>
			<div class="header_botline">
			
			<div class="container">
				<div class="col-md-12">
					<div class="row">
					     
						<div class="logo col-md-1">
						<img src="/img/1_Primary_logo_on_transparent_134x75.png" alt="">
						</div>
						<div class="contacts col-md-10">
                              <div class="cont col-md-4">
                         
                                  <h3>Ждем вас по адресу:</h3>
                                  
                                 Ул. Банковая, 6 , 2-й этаж <br>
                                 Тел.: +38(093)9866036 
                               +38(095) 740-78-37 <p>
                                Пн–Сб: 10:00-20:00, Вс: 10:00-19:00 
                                  
                              </div>
                              
						    <div class="dost col-md-4">
                                <h3>Самовывоз:</h3>
                            Пн-Пт c 10-00 до 19-00,
                            Сб c 11-00 до 15-00<br>
                        ДОСТАВКА: Пн-Пт до 19-00<br>
                        ОТПРАВКА ПО УКРАИНЕ: каждый день "Новой почтой"
						        
						    </div>
	
						  	</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="hidden">
		<form id="callback" class="pop_form">
			<h3>Заказать разработку</h3>
			<input type="text" name="name" placeholder="Ваше имя..." required />
			<input type="text" name="phone" placeholder="Ваше телефон..." required />
			<button class="button" type="submit">Заказать</button>
		</form>
	</div>
	<!--[if lt IE 9]>
	<script src="libs/html5shiv/es5-shim.min.js"></script>
	<script src="libs/html5shiv/html5shiv.min.js"></script>
	<script src="libs/html5shiv/html5shiv-printshiv.min.js"></script>
	<script src="libs/respond/respond.min.js"></script>
	<![endif]-->
	
    <script src=" js/new/jquery-1.4.4.min.js"></script>

	 <script src="js/new/jquery.reveal.js"></script>

     
     
     
	<script src="/libs/jquery/jquery-1.11.1.min.js"></script>
	<script src="/libs/jquery-mousewheel/jquery.mousewheel.min.js"></script>
	<script src="/libs/fancybox/jquery.fancybox.pack.js"></script>
	<script src="/libs/waypoints/waypoints-1.6.2.min.js"></script>
	<script src="/libs/scrollto/jquery.scrollTo.min.js"></script>
	<script src="/libs/owl-carousel/owl.carousel.min.js"></script>
	<script src="/libs/countdown/jquery.plugin.js"></script>
	<script src="/libs/countdown/jquery.countdown.min.js"></script>
	<script src="/libs/countdown/jquery.countdown-ru.js"></script>
	<script src="/libs/landing-nav/navigation.js"></script>
	
	<!-- Yandex.Metrika counter --><!-- Yandex.Metrika counter --><script type="text/javascript">(function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter25346996 = new Ya.Metrika({id:25346996, webvisor:true, clickmap:true, trackLinks:true, accurateTrackBounce:true}); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks");</script><noscript><div><img src="//mc.yandex.ru/watch/25346996" style="position:absolute; left:-9999px;" alt="" /></div></noscript><!-- /Yandex.Metrika counter --><!-- /Yandex.Metrika counter -->
	<!-- Google Analytics counter --><!-- /Google Analytics counter -->

	<script>
		$('#delete_product').click(function(){
			var data = { 'Delete[]' : []};
			$(":checked").each(function() {
				data['Delete[]'].push($(this).val());
			});
			alert('deleted!');
			$.post("/delproduct", data);

		})

	</script>
</body>
</html>