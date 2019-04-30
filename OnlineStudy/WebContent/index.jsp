<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   String basepath=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <title>首页-三+三人行 学习网</title>

    <!-- Bootstrap -->
    <link href="<%=basepath%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basepath%>/css/css/index.css" rel="stylesheet">
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
                placeholder="请输入搜索内容">
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
          

          <li>
          <a href="XSM_finance.jsp">
        <span class="glyphicon glyphicon-usd"></span> 我的财务</a>
          </li>


          <li>
          <a href="login.jsp">
          <span class="glyphicon glyphicon-user"></span> 登陆
          </a></li>
          <li>
          <a href="register.jsp">
          <span class="glyphicon glyphicon-pencil"></span> 注册</a>
          </li>
        </ul>
        </div>
      </div>
    </div>


      <!--导航部分结束,轮播部分开始-->
     <div class="container">
    <div class="row">

    <!--这个是轮播图前面的部分,我用来放内容的-->
    <div class="col-md-3">
    <div class="container-fluid">
      <div class="row">
    
        <!--这个是在里面写数据列表-->
        <div class="col-md-12">
        
        <!--这个是左边写的课程的部分-->
        <div class="col-md-12 hidden-sm hidden-xs" id="HL_banner_list">
          <div class="list-group">
          <a href="#HL_web" class="list-group-item"> 前端开发
          <!--   <div class="panel panel-default" id="HL_course_1">
            <div class="panel-body">
              Basic panel example
            </div>
          </div> -->

          </a>
          <a href="#HL_backstage" class="list-group-item"> 后端开发

          </a>
          <a href="#HL_move" class="list-group-item"> 移动开发

          </a>
          <a href="#HL_database" class="list-group-item"> 数据库

          </a>
          <a href="#HL_UI" class="list-group-item"> UI设计</a>

          <a href="#HL_Junit" class="list-group-item"> 运维&测试</a>

          </div>
         </div>

        </div>
         <!--这个是课程list结束了-->
      </div>
      </div>
    </div>

    <!--这个是中间的写的是轮播图-->
    <div class="col-md-8">
    <div class="carousel slide" id="myCarousel" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-slide-to="0" data-target="#myCarousel" class="active"></li>
        <li data-slide-to="1" data-target="#myCarousel"></li>
        <li data-slide-to="2" data-target="#myCarousel"></li>
        <li data-slide-to="3" data-target="#myCarousel"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
        <img src="img/29.jpg" alt="">
        </div>
        <div class="item">
        <img src="img/30.jpg" alt="">
        </div>
        <div class="item">
        <img src="img/31.jpg" alt="">
        </div>
        <div class="item">
        <img src="img/32.jpg" alt="">
        </div>
      </div>
      <a href="#myCarousel" data-slide="prev" class="carousel-control left">
      <!--这个span里的class="glyphicon glyphicon-chevron-left"有默认居中的效果-->
      <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a href="#myCarousel" data-slide="next" class="carousel-control right">
      <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div>
    
    </div>
    </div>

    <!--这个是后面的留空的部分-->
     <div class="col-md-1">
    </div> 
   </div>
    
      
    <!--这个是轮播器下面的内容-->
    <div class="tab1">
      <div class="container">
        <h2 class="tab-h2">[为什么选择三+三人行学习网]</h2>
        <p class="tab-p">强大的师资力量,完美的课程结合</p>
        <div class="row">
          <!--这个是一个模块用媒体放的,分成了两个,左右各一个-->
          <div class="col-md-6 col">
            <div class="media">
              <div class="media-left">
              <a href="#">
              <img src="img/media1.png" alt="" class="media-object">
              </a>
              </div>
              <div class="media-body">
                <h4 class="media-heading">师资力量</h4>
                <p class="text-muted">其他:非正常毕业欧美学院,没有知名的讲师</p>
                <p>我们:美国哈佛,耶鲁大学毕业,享有声誉的一流专家;</p>
              </div>
            </div>
          </div>

          <!--一个模块结束-->
          <div class="col-md-6 col">
            <div class="media">
              <div class="media-left">
              <a href="#">
              <img src="img/media2.png" alt="" class="media-object">
              </a>
              </div>
              <div class="media-body">
                <h4 class="media-heading">课程内容</h4>
                <p class="text-muted">其他:高校不知名的老师讲解,没有使用价值</p>
                <p>我们:知名企业家,管理学大师联合编写实用性教材;</p>
              </div>
            </div>

          </div>

          <div class="col-md-6 col">
            <div class="media">
              <div class="media-left">
              <a href="#">
              <img src="img/media3.png" alt="" class="media-object">
              </a>
              </div>
              <div class="media-body">
                <h4 class="media-heading">课时安排</h4>
              <p class="text-muted">其他:无法保证上课效率,没有时间表,课时无法完成</p>
              <p>我们:保证上课的效率,我们制作一张表,当天的任务当天完成;</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col">
            <div class="media">
              <div class="media-left">
              <a href="#">
              <img src="img/media4.png" alt="" class="media-object">
              </a>
              </div>
              <div class="media-body">
                <h4 class="media-heading">服务团队</h4>
                <p class="text-muted">其他:社会统招的,水平普通的员工</p>
                <p>我们:内部培训,经过高端服务培训的高级员工</p>
              </div>
            </div>
          </div>



        </div>
      </div>
    </div>
 


    <!--下面的tab2布局-->
    <!--   <div class="tab2" >
          <div class="container">
            <div class="row">
              <div class="col-md-6 tab2-img">
              class="img-responsive这个是响应式比例,不设置这个参数就没有这个"
              class="center-block"这个属性是设置图片的居中,class="taaab2-text"这个是设置的浮动
              
              <img src="img/tab2.png" alt="这是一个图片" 
              class="center-block img-responsive tab2-img">
              </div>
              <div class="text col-md-6 col-sm-6 tab2-text">
                <h3>强大的学习体系</h3>
                <p>经过管理学层层把关,让你的企业突飞猛进</p>
              </div>
            </div>
          </div>
        </div>  -->  






     <!--这个是tab3的布局-->
       <!--  <div class="tab3">
         <div class="container">
           <div class="row">  
             <div class="col-md-6">
             
             class="img-responsive这个是响应式比例,不设置这个参数就没有这个"
             class="center-block"这个属性是设置图片的居中
            
             <img src="img/tab3.png" alt="这时一个图片" 
             class="center-block img-responsive tab3-img">
             </div>
             <div class="text col-md-6 col-sm-6">
               <h3>完美的管理方式</h3>
               <p>最新的培训方案,让你跟企业同行</p>
             </div>
           </div>
         </div>
       </div>   -->



       <!--这个是下面写那个部分的内容-->
       <!--这个是锚点跳转的部分-->
      <a name="HL_web"></a>
      <div id="HL_WEB">
      <div class="container">
        <h2 class="HL_WEB_h2">[前端开发]</h2>
      <div class="row">
       <!--这个是图片显示的样式,具体放几个图片比较好-->
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
          <img src="img/web/html2.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/web/html3.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/web/web1.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/web/jsp1.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>


       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/web/jsp2.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/web/jsp3.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/web/jsp4.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

      </div>
      </div> 
      </div>



      <!--这个可以写Java的部分-->
      <a name="HL_backstage"></a>
      <div id="HL_JAVA">
      <div class="container">
        <h2 class="HL_JAVA_h2">[后台开发]</h2>
      <div class="row">
       <!--这个是图片显示的样式,具体放几个图片比较好-->
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/backstage/ja1.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
      <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/backstage/ja2.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/backstage/ja3.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/backstage/ja4.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/backstage/ja5.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>


        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/backstage/ja6.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/backstage/ja7.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>


        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/backstage/ja8.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>


      </div>
      </div> 
      </div>         

      
       <!--移动开发-->
       <a name="HL_move"></a>
       <div id="HL_move">
      <div class="container">
        <h2 class="HL_move_h2">[移动开发]</h2>
      <div class="row">
       <!--这个是图片显示的样式,具体放几个图片比较好-->
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/move/yd1.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
      <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/move/yd2.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/move/yd3.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/move/yd4.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/move/yd5.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>


       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/move/yd6.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/move/yd7.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/move/yd8.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

      </div>
      </div> 
      </div>
      

      <!--这个是数据库的部分-->
      <a name="HL_database"></a>
      <div id="HL_database">
      <div class="container">
        <h2 class="HL_database_h2">[数据库研发]</h2>
      <div class="row">
       <!--这个是图片显示的样式,具体放几个图片比较好-->
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/database/database1.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
      <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/database/database2.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/database/database3.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/database/database4.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/database/database5.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>


       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/database/database6.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/database/database7.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/database/database8.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

      </div>
      </div> 
      </div>



      <!--这个是UI的部分-->
      <a name="HL_UI"></a>
      <div id="HL_UI">
      <div class="container">
        <h2 class="HL_UI_h2">[UI设计]</h2>
      <div class="row">
       <!--这个是图片显示的样式,具体放几个图片比较好-->
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/UI/ui1.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
      <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/UI/ui2.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/UI/ui3.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/UI/ui4.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/UI/ui5.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>


       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/UI/ui6.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/UI/ui7.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/UI/ui8.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

      </div>
      </div> 
      </div>



       <!--这个是运维测试的部分-->
       <a name="HL_Junit"></a>
       <div id="HL_Junit">
      <div class="container">
        <h2 class="HL_Junit_h2">[运维&测试]</h2>
      <div class="row">
       <!--这个是图片显示的样式,具体放几个图片比较好-->
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/Junit/cs1.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
      <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/Junit/cs2.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/Junit/cs3.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/Junit/cs4.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       
       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/Junit/cs5.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>


       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/Junit/cs6.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/Junit/cs7.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

       <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <!--class="thumbnail" 这个是缩略图的部分-->
          <div class="thumbnail">
          <img src="img/Junit/cs8.png" alt="">
          <div class="caption">
            <h4>中国联通</h4>
            <p>参与了本机构总裁管理的培训课程,学员反馈良好</p>
          </div>
          </div> 
       </div>

      </div>
      </div> 
      </div>






    <!--页脚的部分就是版权的部分-->
    <footer id="footer">
      <div class="container">
        <P>企业培训 | 合作事宜 | 企业投诉</P>
        <P>团队联系电话：135***0729</P>
      </div>
    </footer>


    <!-- jQuery 的部分,要放在BootStrap的框架前面,才可以使用-->
    <script src="<%=basepath %>/js/jquery.js"></script>
    <script src="<%=basepath %>/js/bootstrap.min.js"></script>
    <script src="<%=basepath %>/js/js/index.js" type="text/javascript"></script>
  </body>
</html>