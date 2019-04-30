$(function (){

/*  //这个是轮播器的部分,这个再通过窗口改变大小事件,来解决问题
 //设置垂直居中
 $('.carousel-left').css('line-height', $('.carousel-inner img').height()+'px');
 $('.carousel-right').css('line-height', $('.carousel-inner img').height()+'px');
 $(window).resize(function (){
 	//$('.carousel-inner img').height()+'px'这个是获取图片的高度
    //并通过样式复制为行高,即可解决响应式比
    // 下面这个附值是为了让其余几个也可以居中
 	
 var $height=$('.carousel-inner img').eq(0).height() ||
             $('.carousel-inner img').eq(1).height() ||
             $('.carousel-inner img').eq(2).height() ||
             $('.carousel-inner img').eq(3).height();
$('.carousel-left').css('line-height',$height+'px');             
$('.carousel-right').css('line-height',$height+'px');

});
*/

/*这个是使tab2里面文字居中,谷歌浏览器在上传时,会获取不到元素,所以要等加载完*/
$(window).load(function (){
$('.text').eq(0).css('margin-top',($('.tab2-img').height()-$('.text').eq(0).height())/2+'px');	
});

$(window).resize(function (){
$('.text').eq(0).css('margin-top',($('.tab2-img').height()-$('.text').eq(0).height())/2+'px');	
});

/*这个是tab3的文字居中*/
$(window).load(function (){
$('.text').eq(1).css('margin-top',($('.tab3-img').height()-$('.text').eq(1).height())/2+'px');	
});

$(window).resize(function (){
$('.text').eq(1).css('margin-top',($('.tab3-img').height()-$('.text').eq(1).height())/2+'px');	
});

})