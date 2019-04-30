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
    <title>免费课程</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/css/current.css" rel="stylesheet">
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
          <!--span这个里面的元素class="icon-bar"这个元素是一条横线,方便好看的的-->
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

        </div>


          <!--这个form要放在右边才可以让它显示在一列上面,要记住-->
          <form class="navbar-form navbar-right">
                <div class="input-group">
                <input type="text" class="form-control" 
                placeholder="请输入搜索的课程名字">
                <div class="input-group-btn">
                <button class="btn btn-default">提交</button>
                </div>
                </div>
                </form>

        <!--在ul外面包一个div是为了,class="collapse"这个是折叠菜单,当窗口小于多少时,就自动隐藏-->
        <div class="collapse navbar-collapse" id="navbar-collapse">
        <!--当屏幕放小时,ul和上面图片连接有缝隙,所以要在ul里设置margin-top:0px;才可以没有缝隙-->
        <ul class="nav navbar-nav navbar-right navbar-ul">

          <li  class="active">
          <a href="index.html">
          <sapn class="glyphicon glyphicon-home"></sapn> 免费课程</a>
          </li>

      <!--     <li>
      <a href="#">
              <span class="glyphicon glyphicon-shopping-cart"></span> 我的订单</a>
      </li>
      
      
      <li>
      <a href="#">
              <span class="glyphicon glyphicon-usd"></span> 我的财务</a>
      </li> -->


          <li>
          <a href="#">
          <span class="glyphicon glyphicon-user"></span> 登陆
          </a></li>

          <li>
          <a href="#">
          <span class="glyphicon glyphicon-pencil"></span> 注册</a>
          </li>

        </ul>
        </div>
      </div>
    </div>
  	
  	
    <!--这个是页面课程的部分-->
    <div id="HL_current">
    	<div class="container">
    		<div class="row">
    		    	
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
		          <!--class="thumbnail" 这个是缩略图的部分-->
		          <div class="thumbnail">
		          <img src="img/web/html1.png" alt="">
		          <div class="caption">
		            <h4>中国联通</h4>
		            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
		          </div>
		          </div> 
                </div>
    	

               <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
		          <!--class="thumbnail" 这个是缩略图的部分-->
		          <div class="thumbnail">
		          <img src="img/web/html1.png" alt="">
		          <div class="caption">
		            <h4>中国联通</h4>
		            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
		          </div>
		          </div> 
                </div>
    		

    		   <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
		          <!--class="thumbnail" 这个是缩略图的部分-->
		          <div class="thumbnail">
		          <img src="img/web/html1.png" alt="">
		          <div class="caption">
		            <h4>中国联通</h4>
		            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
		          </div>
		          </div> 
                </div>
    	

    	       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
		          <!--class="thumbnail" 这个是缩略图的部分-->
		          <div class="thumbnail">
		          <img src="img/web/html1.png" alt="">
		          <div class="caption">
		            <h4>中国联通</h4>
		            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
		          </div>
		          </div> 
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
		          <!--class="thumbnail" 这个是缩略图的部分-->
		          <div class="thumbnail">
		          <img src="img/web/html1.png" alt="">
		          <div class="caption">
		            <h4>中国联通</h4>
		            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
		          </div>
		          </div> 
                </div>
          

          </div>
    	</div>
    </div>
 
     <!--这个是分页的部分-->
          <div id="HL_nav">
		  <nav aria-label="Page navigation">
		  <ul class="pagination">

		    <li class="disabled">
		      <span>
		        <span aria-hidden="true">&laquo;</span>
		      </span>
		    </li>

		    <li class="active">
		      <span>1 <span class="sr-only">(current)</span></span>
		    </li>

		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>


		  </ul>
		</nav>
        </div>

  	
  	 <!--页脚的部分就是版权的部分-->
    <footer id="footer">
      <div class="container">
        <P>企业培训 | 合作事宜 | 企业投诉</P>
        <P>团队联系电话：135***0729</P>
      </div>
    </footer>
  	
  	 <!-- jQuery 的部分,要放在BootStrap的框架前面,才可以使用-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/js/current.js" type="text/javascript"></script>
  </body>
</html>