<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML lang="pt">

<HEAD>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <title>index_template</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/navBar.css">
    <link rel="stylesheet" href="css/container.css">
    <link rel="stylesheet" href="css/footer.css">
</HEAD>

<body>

<!--Top Bar-->
<div class="navBar">
    <div class="navBarLogo">
        <img alt="" src=""><b>DAW</b>
    </div>
    <ul><li class="menu"><a href="">Home</a></li></ul>
    <ul class="rightMenu">
        <li class="menu"><a href="">Logout</a></li>
        <li >Welcome Pedro</li>
    </ul>
</div>

{foreach item=micropost from=$microposts}
    <!--Post Box-->
    <div class="container">
        <div class="header">
            <ul>
                <li>{$micropost.name}</li>
            </ul>
            <ul class="floatRight">
                <li>updated: {$micropost.updated_at}</li>
                <li>created: {$micropost.created_at}</li>
            </ul>
        </div>
        <div class="body">{$micropost.content}</div>
        <div class="footer">
            <ul>
                <li class="floatLeft"><a href="">Update</a></li>
                <li class="floatRight"><a href="">&#128077 {$micropost.likes}</a></li>
            </ul>
        </div>
    </div>
{/foreach}

<div class="footerBar">
    <div>@2020 Desenvolvimento de Aplica&ccedil;&otilde;es Web</div>
    <div class="floatRight">Designed by a61207</div>
</div>

</body>
</HTML>