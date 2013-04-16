<%@ page import="ilamb.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Lamb forum</title>
    
</head>
<body>
<div class="headline">
    <h1>iLamb - min gästbok!</h1>
    <ul>
        <li><g:link uri="/">Visa alla meddelanden</g:link></li>
        <li><g:link controller="myForum" action="create">Nytt inlägg</g:link></li>
    </ul>
</div>
<div id="wrap">
        <g:each in="${posts}" var="prop">
            <div class="middle-stuff">
                <h2><%= prop.headline %></h2>                
                <p>
                    <%=  prop.message %>                    
                </p>
                <button type="button" class="btn btn-inverse"><%= prop.username %></button>                
            </div>
        </g:each>    
</body>

<!-- Le javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/bootstrap/js/bootstrap.min.js"></script>

</html>