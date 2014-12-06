<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path +"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>北京运华天地科技有限公司－首页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--bootstrap的核心css-->
    <link rel="stylesheet" href="<%=basePath%>static/css/bootstrap.min.css">
    <!--为了修正index页面的bootstrap样式-->
    <link rel="stylesheet" href="<%=basePath%>static/css/dashboard.css">
    <!--bootstrap的js是依赖与jquery的所以要在bootstrap.js前引入jquery-->
    <script src="<%=basePath%>static/js/jquery-1.11.0.min.js"></script>
    <script src="<%=basePath%>static/js/jquery-migrate-1.2.1.min.js"></script>
    <!--bootstrap的js-->
    <script src="<%=basePath%>static/js/bootstrap.min.js"></script>
    <!--处理页面缩放图片不跟随问题的js-->
    <script src="<%=basePath%>static/js/jquery.anystretch.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">北京运华科技有限公司</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="javascript:void(0)"  data-toggle="modal" data-target="#myModal">Help</a></li>
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Settings</a></li>
                <li class="dropdown">
                    <a href="#" aria-expanded="false" href="#" class="dropdown-toggle" data-toggle="dropdown">
                        定损教学课程 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a aria-expanded="false" href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="glyphicon glyphicon-user"> ${sessionScope.user.username}</i>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li> <a href="#"><i class="glyphicon glyphicon-log-out"> 退出</i></a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Help</h4>
            </div>
            <div class="modal-body">
                <p class="text-success">QQ:214042114</p>
                <p class="text-success">Email:lzrainchen@icloud.com</p>
                <p class="text-success">Phone:15837776005</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="#">Overview</a></li>
                <li><a href="#">Reports</a></li>
                <li><a href="#">Analytics</a></li>
                <li><a href="#">Export</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Item #1
                                    <span class="caret"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <ul class="nav nav-sidebar">
                                    <li class="active"><a href="#">二级菜单</a></li>
                                    <li><a href="#">手风琴效果</a></li>
                                    <li><a href="#">Item1-2-1</a></li>
                                    <li><a href="#">Item1-2-2</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Item #2<span class="caret"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body">
                                手风琴效果
                            </div>
                        </div>
                    </div>
                </div>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1>这里是rightFrame的内容！暂且为空</h1>
        </div>
    </div>
</div>
</body>
</html>
