<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   String basepath=request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
	<title>我的财务-三+三人行 学习网</title>

	<!-- Bootstrap -->
  <link href="<%=basepath %>/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=basepath %>/css/css/index.css" rel="stylesheet">
  <link href="<%=basepath %>/css/css/XSM_finance.css" rel="stylesheet">
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <!--项目实战开始啦,熟悉的部分,导航部分开始啦-->
  <div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
    	<div class="navbar-header">
    		<!--这个是放logo的图片-->
    		<a href="" class="navbar-brand logo">
      		<img src="img/logo2.png" alt="">
    		</a>
        <!--class="navbar-toggle"这个是当小屏幕时,出现可以点击的东西-->
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
          <!--span这个里面的元素class="icon-bar"这个元素是一条横线,方便好看的-->
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <!--这个form要放在右边才可以让它显示在一列上面,要记住-->
      <form class="navbar-form navbar-right">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="请输入搜索内容">
          <div class="input-group-btn">
            <button class="btn btn-default">提交</button>
          </div>
        </div>
      </form>
      <!--在ul外面包一个div是为了,class="collapse"这个是折叠菜单,当窗口小于多少时,就自动隐藏-->
      <div class="collapse navbar-collapse" id="navbar-collapse">
        <!-- 当屏幕放小时,ul和上面图片连接有缝隙,所以要在ul里设置margin-top:0px;才可以没有缝隙 -->
        <ul class="nav navbar-nav navbar-right navbar-ul">
          <li>
            <a href="index.jsp">
              <span class="glyphicon glyphicon-home"></span> 首页</a>
          </li>
          <li>
            <a href="XSM_strategy_index.html">
            <span class="glyphicon glyphicon-book"></span> 学习攻略 </a>
          </li>
          <li>
            <a href="#">
              <span class="glyphicon glyphicon-shopping-cart"></span> 我的订单</a>
          </li>
          <li class="active">
            <a href="XSM_finance.jsp">
              <span class="glyphicon glyphicon-usd"></span> 我的财务</a>
          </li>
          <li>
            <a href="#">
              <span class="glyphicon glyphicon-user"></span> 登陆</a>
          </li>
          <li>
            <a href="#">
              <span class="glyphicon glyphicon-pencil"></span> 注册</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  
  <!-- 我的财务：目录，列表 -->
  <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Frontend</li>
              <li class="active"><a href="#">HTML 4.01</a></li>
              <li><a href="#">HTML5</a></li>
              <li><a href="#">CSS</a></li>
              <li><a href="#">JavaScript</a></li>
			  <li><a href="#">Twitter Bootstrap</a></li>
			  <li><a href="#">Firebug</a></li>
              <li class="nav-header">Backend</li>
              <li><a href="#">PHP</a></li>
              <li><a href="#">SQL</a></li>
              <li><a href="#">MySQL</a></li>
              <li><a href="#">PostgreSQL</a></li>
              <li><a href="#">MongoDB</a></li>
           </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="leaderboard">
            <h1>Learn. Practice. Develop.</h1>
            <p>w3cschool offers web development tutorials. We believe in Open Source. Love standards. And prioritize simplicity 				             and readability while serving content.</p>
            <p><a class="btn btn-success btn-large">Join w3cschool now</a></p>
          </div>
          <div class="row-fluid">
            <div class="span4">
              <h2>Learn</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn btn-success btn-large" href="#">Start Learning now</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Practice</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn btn-success btn-large" href="#">Start percticing now</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Develop</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn btn-success btn-large" href="#">Start developing now</a></p>
            </div><!--/span-->
          </div><!--/row-->
          <hr />
          
          
     <footer>
        <p>&copy; Company 2012</p>
      </footer>

    </div><!--/.fluid-container-->
    
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/jquery.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-transition.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-alert.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-modal.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-dropdown.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-scrollspy.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-tab.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-tooltip.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-popover.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-button.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-collapse.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-carousel.js"></script>
    <script src="../bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-typeahead.js"></script>
  

</body>
</html>