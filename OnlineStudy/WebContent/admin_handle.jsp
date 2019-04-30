<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <title>后台-管理员界面</title>

	<jsp:include page="include.jsp" />
	<script src="common/PageQuery.js" > </script>
	
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
		
		#test-panel .item-list
		{
			background-color: #FFF;
			min-height: 150px;
			padding: 4px;
			margin: 2px;
			border-radius: 2px;
		}
		
		/* 查询面板 */
		#test-panel .search
		{
			padding: 4px;
		}
		
		/* 页码链接 */
		.page-query-link
		{
			background-color: #2B77C4;
			border-radius: 2px;
			padding: 2px 4px;
			margin: 2px;
			color: #FFF;
			text-align: center;
			cursor: pointer;
		}
		
		/* 页码链接:当前页 */ 
		.page-query-link-active
		{
			background-color: #2B77C4;
			color: #FFF;
			border: 1px solid #2B77C4;
		}
		
		/* bootstrap 默认样式修正 */
		.table td
		{
			text-aligin: left;
		}
		
		.table th
		{
			text-align: left;
		}
		
	</style>
  </head>
  
  <body>
	
	<div id="test-panel">
		<h3> &nbsp;&nbsp;&nbsp; 课程信息管理 </h3>
		
			<!-- 查询条件 -->
			<div class="search">
				<select class="common-input course" onchange="MAIN.load()">
					<option value="0"> 任何课程 </option>
					<option value="yes"> 已上架 </option>
					<option value="no"> 未上架 </option>
				</select>
	
				<input class="common-input filter" placeholder="按课程名字过滤" onkeydown="MAIN.filter_changed(event)" />
				
			
				<button onclick="MAIN.load()"> 刷新 </button>
				<button onclick="MAIN.remove_selected()"> 删除选中 </button>
			</div>
		
		<div class='item-list'>
	   		<table class="table">
	   			<thead>
	   				<th> &nbsp </th>
	   				<th> 课程名称 </th>
	   				<th> 课程价格 </th>
	   				<th> 是否上架 </th>
					<th> 添加日期 </th>
	   				<th> 课程描述 </th>
					<th> 课程图片 </th>
	   				<th> 更多操作 </th>
	   			</thead>
	   			<tbody>
	   			</tbody>
	   		</table>
	   		
	   		<div class="navibar"> </div>
    
		</div>
	</div>  
	
	<jsp:include page="iDialog.jsp" />
    
  </body>
  
  
	<script>
  
  var MAIN = {};
  MAIN.panel = $("#test-panel");
  
  // (1) 创建AfMap
  MAIN.map = new AfMap();
  
  // 初始化
   MAIN.panel.ready (function(){
  	
  	  	PAGE_QUERY.index_api = "study/CoursePageIndex.api";
  		PAGE_QUERY.query_api = "study/CoursePageQuery.api";
  		PAGE_QUERY.page_size = 15;
  		PAGE_QUERY.navibar = $(".navibar", MAIN.panel);
  		
  		PAGE_QUERY.show_page = function (items)
  		{
  			MAIN.show_list (items);
  		}; 
  		
  	
  		MAIN.load();
  });
   
  
  	MAIN.filter_changed = function (event)
	{
		// 响应回车
		if(event.keyCode == 13)
		{
			//MAIN.start = MAIN.end = 0;
			
			var target = $("tbody" ,MAIN.panel);
			target.html("");
			MAIN.load();
		}
	}
	
  // 加载数据
  MAIN.load = function()
  {
	var p = $(".search", MAIN.panel);
	
	var req = {};
	req.course = $(".course", p).val();	//日期，转化为数字类型
  	req.filter = $(".filter", p).val();
  	
/*   	Af.rest("study/CourseList.api", req, function(ans) {
		
		if(ans.result == null)
		{
			toastr.error( "数据显示失败!" );
			return;
		}
		
		// 显示结果
		var items = ans.result;
		MAIN.items = items;
		MAIN.show_list (items); */
		
		PAGE_QUERY.query(req);
	
  };
  
  // 显示列表
  MAIN.show_list = function(items)
  {
  	var target = $("tbody", MAIN.panel);		// 目标容器
  	target.html ("");		// 清空表格
  
  	// (2) 清空
  	MAIN.map.clear();
  	
  	for(var i=0; i<items.length; i++)
  	{
  		var it = items[i];
  		// (3) 存入
  		MAIN.map.put(it.course_id, it);
  		
  		var str = MAIN.format_row (it);
  		target.append (str);
  	}
  }
  
  	/* 构造一行的HTML */
  	MAIN.format_row = function(it)
  	{
  		var exist;
  		if(it.course_exist == true)
  		{
  			exist = "已上架";
  		}
  		else
  		{
  			exist = "未上架";
  		}
  		var str = "<tr id1='##1'>" ;
  		str += ( "<td> <input type='checkbox' id1='##1' onchange='MAIN.back_light()'> </td>" );
  		str += ( "<td>" + it.course_name + "</td>" );
		str += ( "<td>" + it.course_price + "</td>" );
  		str += ( "<td>" + exist + "</td>" );
		str += ( "<td>" + it.course_date + "</td>" );
  		str += ( "<td>" + it.course_desc + "</td>" );
		str += ( "<td>" + it.course_img + "</td>" );
		  		
  		var cmd1 = "<a href='javascript:void(0)' onclick='MAIN.item_remove(this)' id1='##1'> 删除 </a>";
  		var cmd2 = "<a href='javascript:void(0)' onclick='MAIN.item_edit(this)' id1='##1'> 修改 </a>"
  		str += ( "<td>" + cmd1 + cmd2 + "</td>" );
  		
		str += ( "</tr>");
		str = str.replace(/##1/g, it.course_id);
		return str;
  	}
  	
  	// 删除一行
  	MAIN.item_remove = function( e )
  	{
  		// 因为id被HTML的一个固有属性的名字
  		var id = $(e).attr( "id1" );
  		
  		// 从Map中取出对象
  		var it = MAIN.map.get(id);
  		
  		// 要求用户确认
  		if( !confirm("是否删除" + "价格为:" + it.course_price + ", 课程名为:" + it.course_name + "?"))
  			return;
  		
  		var req = {};
  		req.id = new Number(id);
  		Af.rest("study/CourseRemove.api", req, function(ans){
  		
  			Af.trace(ans);
  			
  			if(ans.id == 0)
  			{
  				toastr.error("删除失败!");
  				return;
  			}
  			
  			MAIN.remove_row(e);
  		});
  	};
  	
  	MAIN.remove_row = function(e) {
  	
  		// 成功: 则从表格里删除改行
		$(e).parent().parent().remove();
	}
	
	// 删除选中的多行
	MAIN.remove_selected = function()
	{
		// 找到<tbody>
		var container = $("tbody", MAIN.panel);
	
		// 找到下面的所有的checkbox
		var boxes = $("input[type='checkbox']", container);
		
		if( !confirm("是否确定删除?"))
 			return;
		
		// 取出所有选中的id,放入数组
		var options = [];
		for(var i=0; i<boxes.length; i++)
		{
			var box = $(boxes[i]);
			if( box.prop("checked"))
			{
				var id = box.attr("id1");
				options.push(id);
			}
		}
		
		// 发送请求到后台
		var req = {};
		req.idlist = options.join(",");
		Af.rest ("study/CourseRemoveList.api", req, function(ans){
		
			Af.trace(ans);
			if(ans.result == 0)
			{
				toastr.error("删除数据失败!");
				return;
			}
			
			// 重新加载,刷新显示
			toastr.success("删除成功!");
			MAIN.load();
		});
	};
	
  	// 背景高亮
   	MAIN.back_light = function()
  	{
  		// 找到<tbody>
		var container = $("tbody", MAIN.panel);
	
		// 找到下面的所有的checkbox
		var boxes = $("input[type='checkbox']", container);
		
		// 找到checkbox的选中
		for(var i=0; i<boxes.length; i++)
		{
			var box = $(boxes[i]);
			if( box.prop("checked"))
			{
				box.parent().parent().css("background-color", "lightblue");
			}
			else{
				box.parent().parent().css("background-color", "white");
			}
		}
  	};
  	
  	
  	// 修改一行
  	MAIN.item_edit = function( e )
  	{
  		var id = $(e).attr("id1");
  		// 加载缓存的数据
  		var it = MAIN.map.get (id);
  		
  		// 显示对话框
  		DLG_STU.show(it);
  		
  		// 回调函数
  		DLG_STU.callback = function(info)
  		{
  			// info里就是最新修改后的数据
  			var req = info;
  			req.id = it.course_id;
  			Af.rest("study/CourseUpdate.api", req, function(ans){
  			
  				DLG_STU.hide();		// 关闭对话框
  				
  				if(ans.result == 0)
  				{
  					toastr.error("修改失败!");
  					return;
  				}
  				
  				var it = ans.row;
  				MAIN.update_row(it);
  			});
  		}
  	};
  	
  	// 更新显示一行记录的值
  	MAIN.update_row = function(it)
  	{	
  		// 找到 <tr>
  		var container = $("tbody", MAIN.panel);
  		var selector = "tr[id1='##1']".replace(/##1/g, it.course_id);
  		var tr = $(selector, container);
  		
  		var html = MAIN.format_row(it);
  		tr.replaceWith( html );
  		
  		// 让map中的数据对应一致
  		MAIN.map.clear();
  		
  		toastr.success("修改成功!");
  		
  		MAIN.load();
  	}

  </script>
  
</html>