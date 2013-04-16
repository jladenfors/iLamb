<%@ page import="ilamb.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
    <script type="text/javascript">
        $(document).ready(function(){
            $("form").submit(function (e) {
                var re = /[<.]/;

                if (re.test($("#message").val()) === true){
                    e.preventDefault();
                    alert("Invalid character found in message!");
                }

                if (re.test($("#headline").val()) === true){
                    e.preventDefault();
                    alert("Invalid character found in headline!");
                }
            });
        });
    </script>
</head>
<body>
<div class="headline">
    <h1>iLamb - min gästbok!</h1>
    <ul>
        <li><g:link uri="/">Visa alla meddelanden</g:link></li>
        <li><g:link controller="myForum" action="create">Nytt inlägg</g:link></li>
    </ul>
</div>
<g:form action="create" name="form">


    <h2 class="form-signin-heading">Skriv en hälsning... </h2>

    <p>
        <input type="text" id="headline" name="headline" class="span6" placeholder="Titel">
    </p>
    <p>
        <textarea class="field span6" rows="10" name="message" id="message" placeholder="Ditt meddelande"></textarea>
    </p>
    <p>
        <label id="optionsRadio">Användare:  </label>
        <g:select name="username" class="span6" id="username"
                  from="${User.findAll()}"
                  optionValue="username" optionKey="username"/>        
    </p>
    <div class="actions span6">
        <input type="submit" class="btn primary span3" value="Spara meddelande">
        <input type="reset" class="btn span3" value="Clear">
    </div>
<p class="clearfix"></p>


</g:form>
</body>
</html>