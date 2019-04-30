
/*
 * 索引化查询
 */

var PAGE_QUERY = {
	page_size: 15, // 输入参数: 每页行数
	index_api: "", // 输入参数: "AbcPageIndex.api"
	query_api: "",  // 输入参数:  "AbcPageQuery.api"
	navibar: null, // 输入参数: 页面区div对象
	
	pages: 0, // 总页面数
	cur: 0, // 当前页码
	indexes : [], // 查询结果的ID列表
	rows: [], // 本页数据
	params:{}  // 本页的查询参数
};

// @overide: 获取显示
PAGE_QUERY.show_error = function ( error, reason )
{
	alert(reason);
};

//@overide: 显示一页内容, items可能为null
PAGE_QUERY.show_page = function ( items )
{
	alert("user should override this function! PAGE_QUERY.show_age()");
};

// 生成页面链接
PAGE_QUERY.show_navibar = function ( )
{
	if(this.navibar == null)return; 
	var str = "";
	for(var i=1; i<PAGE_QUERY.pages; i++)
	{
		
		var link = "<span class='page-query-link ##2'"
			+ " onclick='PAGE_QUERY.page_clicked(this)' page='##1' > ##1 </span>";
	
		var css_active = "";	
		if( i == this.cur_page)
			 css_active = "page-query-link-active";	
		
		link = link.replace(/##1/g, i).replace(/##2/g, css_active);
		str += link;
	}
	this.navibar.html (str);	
};

// 外部接口: 获取索引
PAGE_QUERY.query = function ( params )
{
	this.params = params;
	
	Af.rest (this.index_api, params, function(ans){
		if(ans.result == 0) 
		{
			PAGE_QUERY.show_error ("数据错误!", "没有数据被查询到!");
		}	
				
		PAGE_QUERY.query_result ( ans.result );		
	});
};



PAGE_QUERY.query_result = function( items )
{
	this.indexes = items; // ID列表
	
	// 计算页数
	var n = this.indexes.length;
	if(n == 0) 
		this.pages = 0;
	else
		this.pages = n / this.page_size + 1;
	
	this.cur_page = 0;
	this.show_navibar();
	
	// 立即显示第1页
	if(this.pages > 0)
	{
		this.load_page (1);
	}
    else{
    	this.show_page(null);
    }
}

PAGE_QUERY.load_page = function (page )
{
	// 构造该页面内所包含的行的ID
	var idlist = [];
	var start_index = (page -1) * this.page_size;
	for(var i= 0; i< this.page_size; i++)
	{
		var index = start_index + i;
		if(index >= this.indexes.length) break;
		
		idlist.push ( this.indexes[ index ]);
	}
	
	// 查询这些ID的内容
	var req = {};
	req.page = page;
	req.idlist = idlist;
	Af.rest (this.query_api, req, function(ans){
		
		if(ans.result == 0) 
		{
			PAGE_QUERY.show_error ("数据错误!", "没有查询到数据!");
			return;
		}
		
		PAGE_QUERY.load_page_result ( ans );
	})
};

PAGE_QUERY.load_page_result = function ( ans )
{
	this.cur_page = ans.page;
	this.rows = ans.result;
	this.show_page (ans.result);
	this.show_navibar();
}


// 点击页码链接
PAGE_QUERY.page_clicked = function ( e )
{
	var page = new Number( $(e).attr("page") );
	this.load_page ( page );
}

//重新加载当前页面
PAGE_QUERY.reload_page = function()
{
	PAGE_QUERY.query (this.params);
};








