<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!-- 修改Student信息 -->
<div class="modal fade" id="dlg-student" >
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- 对话框标题 -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title"> 修改课程信息  </h4>
			</div>
			
			<!-- 对话框内容 -->
			<div class="modal-body" style="padding: 10px;">

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
				
			</div>		
			
			<!-- 对话框底部 -->
			<div class="modal-footer" style="text-align: right;width:100%" >	
					<span role="note" > </span>					
					<button class='btn' onclick="DLG_STU.ok()"> 保存 </button>									
			</div>
	   </div>
	</div>
</div>

<script>
	var DLG_STU = {};
	DLG_STU.dlg = $("#dlg-student");
	
	/* 显示编辑对话框，传入初始信息 */
	DLG_STU.show = function( it )
	{
		DLG_STU.dlg.modal('show');
		
		var p = DLG_STU.dlg;
		$(".name", p).val( it.course_name );
		$(".price", p).val( it.course_price );
		
		var now = new Date();
		var d = now.toLocaleString();
		it.course_date = d;
		$(".date", p).val( it.course_date );
		
		$(".desc", p).val( it.course_desc );
		$(".img", p).val( it.course_img );
		if(it.course_exist == true)
			$(".exist", p).val( "yes" );
		else 
			$(".exist", p).val( "no" );
	};
	DLG_STU.hide = function( )
	{
		DLG_STU.dlg.modal('hide');
	}

	DLG_STU.ok = function()
	{
		var p = DLG_STU.dlg;
		
		// 用户的输入
		var info = {};		
		info.name = $(".name", p).val();
		info.price = $(".price", p).val();
		info.date = $(".date", p).val();
		info.desc = $(".desc", p).val();
		info.img = $(".img", p).val();
		info.exist = ($(".exist", p).val() == "yes");
		
		/* 回传给调用者 */
		if(DLG_STU.callback != null) DLG_STU.callback (info);
	};
	

</script>