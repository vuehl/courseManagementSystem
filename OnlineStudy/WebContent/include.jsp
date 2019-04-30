<%@ page contentType="text/html;charset=UTF-8" language="java" %> 

   <!-- Bootstrap -->
<script src="js/jquery.js"></script>

	<script src="js/bootstrap.min.js"></script>
   <link href="css/bootstrap.min.css" rel="stylesheet">


  

<!-- toastr support -->
<link href="css/toastr.min.css" rel="stylesheet" />
<script src="js/toastr.min.js"></script>

<script src="common/AfCommon.js"></script> 
<link rel="stylesheet" href="common/common.css">

<script>      

	/* 其他地方请勿使用 document.ready .. */
	$(document).ready( function(){
	
		/* toastr 提示 */
		toastr.options = {
				"closeButton": false, //是否显示关闭按钮
				"debug": false, //是否使用debug模式
				"positionClass": "toast-top-center", //弹出窗的位置
				"showDuration": "200", //显示的动画时间
				"hideDuration": "1000", //消失的动画时间
				"timeOut": "2000", //展现时间
				"showEasing": "swing", //显示时的动画缓冲方式
				"hideEasing": "linear", //消失时的动画缓冲方式
				"showMethod": "fadeIn", //显示时的动画方式
				"hideMethod": "fadeOut" //消失时的动画方式
		};
	
		/* tooltip提示 */
		$("[tooltip]").each ( function (i, e ){
			$(e).tooltip({				
				placement: "top",
				delay: { "show": 500, "hide": 100 },
				title: $(e).attr("tooltip")
			})
		});
	});
</script>