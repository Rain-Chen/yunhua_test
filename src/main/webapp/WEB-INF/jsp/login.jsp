<%--
  Created by IntelliJ IDEA.
  User: rainchen
  Date: 14-12-3
  Time: 下午7:44
  To change this template use File | Settings | File and Code Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>北京运华天地科技有限公司－登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--bootstrap的核心css-->
    <link rel="stylesheet" href="<%=basePath%>static/css/bootstrap.min.css">
    <!--bootstrap的js是依赖与jquery的所以要在bootstrap.js前引入jquery-->
    <script src="<%=basePath%>static/js/jquery-1.11.0.min.js"></script>
    <script src="<%=basePath%>static/js/jquery-migrate-1.2.1.min.js"></script>
    <!--bootstrap的js-->
    <script src="<%=basePath%>static/js/bootstrap.min.js"></script>
    <!--处理页面缩放图片不跟随问题的js-->
    <script src="<%=basePath%>static/js/jquery.anystretch.min.js"></script>
    <style type="text/css">
        .transbox{
             /* for IE */
             filter:alpha(opacity=70);
             /* CSS3 standard */
             opacity:0.7;
             /*background: transparent;*/
         }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <img src="static/img/title.jpg" style="width:1170px"/>
        </div>
    </div>
</div>
<div class="jumbotron" style="padding: 0px 0px">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox" style="height: 500px">
            <div class="item active">
                <img src="static/img/01.jpg" alt="" style="float: none;margin-left: auto;margin-right: auto;">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="static/img/02.jpg" alt="" style="float: none;margin-left: auto;margin-right: auto;">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="static/img/03.jpg" alt="" style="float: none;margin-left: auto;margin-right: auto;">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="static/img/04.jpg" alt="" style="float: none;margin-left: auto;margin-right: auto;">
                <div class="carousel-caption">
                </div>
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<div class="pull-right col-lg-3 text-center" style="margin-top: -395px; margin-right: 190px">
    <div class="thumbnail transbox">
        <div class="caption">
            <h3 class="text-caption">欢迎登录</h3>
            <form action="login" method="post" role="form" >
                <div class="form-group">
                    <label class="sr-only" for="username">Username</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Type Username here..."/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="sr-only" for="password">Password</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="glyphicon glyphicon-question-sign"></i></div>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Type Password here...">
                    </div>
                </div>
                <div id="lf" style="color: red">${lf}</div>
                <button type="submit" class="btn btn-success btn-lg btn-block">登录</button>
            </form>
        </div>
    </div>
</div>
<footer>
    <div class="container" style="margin-top: -25px">
        <div class="text-center">
            <kbd>关于我们</kbd> <mark>版权©:北京运华天地科技有限公司</mark> <a href="#">www.auto-edu.com</a>
        </div>
    </div>
</footer>
<script  type="text/javascript">
    $("#username").blur(function(){
        $.ajax({
            url: "${pageContext.request.contextPath}/usernameUnique",
            data: {
                username: $("#username").val()
            },
            success: function( data ) {
                console.info(data);
                var obj = $.parseJSON(data)
                if(obj.success){
                    $( "#lf" ).html( "<strong>" + "用户不存在" + "</strong>");
                }
            }
        });
    });
</script>
</body>
</html>
