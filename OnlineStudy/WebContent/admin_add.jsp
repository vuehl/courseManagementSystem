<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<base href="<%=basePath%>">
    <title>后台-管理员界面</title>
     
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<jsp:include page="include.jsp" />

	
	<style>
		/* 测试面板 */
		#test-panel
		{
			width: 80%;				
			padding: 20px;	
			margin: auto; /* 左右居中 */
			margin-top: 20px;
			background-color: #A6C4E4;	
			border-radius: 4px;  /* 圆角 */			
		}
		
		
		
	</style>
  </head>
  
  <body>
  	
    <div id="test-panel" >
    <h3> 课程信息登入 </h3>
    <hr>
    
   		 <label class="common-label"> 课程名称 </label>
         <input class="common-input name" /> <br>
         
         <label class="common-label"> 课程价格 </label>
         <input class="common-input price" /> <br>
         
         <label class="common-label"> 添加日期 </label>
		 <input class="common-input date" disabled/> <br>
		 
		 <label class="common-label"> 课程描述 </label>
		 <input class="common-input desc" /> <br>
		 
		 <label class="common-label"> 课程图片 </label>
		 <input class="common-input img" /> <br>
         
         <label class="common-label"> 是否上架 </label>
         <select class="common-select exist"> 
         	<option value="yes"> 已上架 </option>
         	<option value="no"> 未上架 </option>
         </select>
         <br>

         <br>
         <div style="width: 100%; text-align: left;"> 
         	<button onclick="MAIN.ok()"> 添加 </button>
         </div>    	         

    </div>
    
  </body>
  
  <script>
  	var MAIN = {};
  	MAIN.panel = $("#test-panel");
  	  	
  	/* 初始仳 */
  	MAIN.panel.ready (function(){
  	
/*   		var date = new Date().getFullYear(); 
  		$(".date", MAIN.panel).val ( year );  */
	  	var now = new Date();		//获取Date()对象的一个实例
/* 		var year= now.getFullYear();//获得年
		var month = now.getMonth()+1;	//获得月份
		var date = now.getDate();	//获得日
		var hour = now.getHours();		// 获得时间
		var minute = now.getMinutes();
		var second = now.getSeconds(); */
		
		var d = now.toLocaleString();
		$(".date", MAIN.panel).val(d);
  	});
  	
  	/* 点确认确钮 */
  	MAIN.ok = function()
  	{
  		var p = MAIN.panel;
  		var req = {};
  		req.name = $(".name", p).val();
		req.price = $(".price", p).val();
  		req.exist = ( $(".exist", p).val() == "yes" );
		req.date = $(".date", p).val();
		req.desc = $(".desc", p).val();
		req.img = $(".img", p).val();
  		
  		Af.trace(req);
  		
  		Af.rest ("study/CourseSave.api", req, function(ans){
  			
  			if(ans.result == 0)
  			{
  				toastr.error ( "添加课程失败!" );
  				return;
  			}
  			
  			toastr.success ("添加课程成功!");
  		});
  	}
  	
  </script>
  
</html>