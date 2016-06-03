<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML
><HEAD>
    <META http-equiv="Content-Type" content="text/html; charset=utf-8">

    <link href="/style/style.css" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" href="/style/formstyle.css" />

    <!----<script>

    d= document;
    function validate_form ( )
{
    
    s = "";
	valid = true;
   email1 =d.contact_form.mail.value; 
    email2 = d.contact_form.mail2.value;
    pass1= d.contact_form.password.value;
    pass2 = d.contact_form.password2.value;
    log = d.contact_form.login.value;
    
     var re = /^([a-z0-9_\-]+\.)*[a-z0-9_\-]+@([a-z0-9][a-z0-9\-]*[a-z0-9]\.)+[a-z]{2,6}$/i;

     if ( ( d.contact_form.gender[0].checked == false ) && ( document.contact_form.gender[1].checked == false ) )
        { s+=", gender"; valid = false;}

    if ( d.contact_form.login.value == ""|| log.length <3 )
        {        s+=", login"; valid = false;}
     if ( d.contact_form.mail.value == "" )
        {          s+=", mail1"; valid = false;}
     if ( d.contact_form.mail2.value == "" )
        {         s+=", mailconfirm"; valid = false;}
     if ( d.contact_form.password.value == "" )
        {          s+=", password"; valid = false;}
     if ( d.contact_form.password2.value == "" )
        {         s+=", password2"; valid = false;}
if ( d.contact_form.phone.value == "" )
        {        s+=", phone"; valid = false;}
if (valid == false){ 
    alert ("Вы не заполнили следующие поля:" +s);
}
    
    alert(re.test(email1) ? 'Правильный адрес' : 'Неправильный адрес');
    
    if (email1 !== email2) {
    alert ("Емэйлы не совпадают")}
    
    if (pass1 !== pass2) {
         alert("Пароли не идентичны");
     }
    s= "";   
    
    if (valid) {
    alert("регистрация успешна!");

    }
    return valid;
}

     

            
        


</SCRIPT> --->

</HEAD>
<BODY>
    
    <div id = backs>
<div id = form>
<FORM name="contact_form" method="post" action="/adduser" onsubmit="return validate_form (); ">

<H2>Пожалуйста введите ваши данные.</H2>
    <br>
  Ваше логин:
        </br>
    <INPUT type="text" name="login"> 
        
        <P>
        Ваше e-mail:
        </p>
      
        <INPUT type="text" name="mail"> 
            <br>
            подтвердите ваш e-mail: 
            </br>
                <INPUT type="text" name="mail2">
                    
                <p>    
                Ваш пароль: 
                    </p> 
                    
                    <INPUT type="text" name="password">
                       
                    <br>    
                      подтвердите ваш пароль:
                        </br>
                <INPUT type="text" name="password2">
            
                <p>
                Ваше телефон: 
                    </p>
                    <br>
                    <INPUT type="text" name="phone">
                        </br>
    <br>
    Ваше имя:
    </br>
    <br>
    <INPUT type="text" name="name">
    </br>

</P><P><INPUT type="submit" name="send" value="Отправить данные"></P>

</FORM>


                        </div>
    </div>

</BODY></HTML>