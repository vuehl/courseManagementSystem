package Study.com.controller;

import Study.com.util.JsonUtil;


import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;


import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Study.com.model.Admin;
import Study.com.service.AdminService;

@Controller
@Scope("prototype")
@RequestMapping("/study/")
public class AdminController 
{
	@Autowired
	private AdminService as;
	
	static Logger logger = Logger.getLogger(AdminController.class);
	
//	@ResponseBody
//	@RequestMapping(value = "/CourseList", produces = "text/plain; charset=utf-8")
//	public String getCourseAll(@RequestBody String course) throws JSONException, UnsupportedEncodingException 
//	{
//		logger.debug(".......... 查询所有行 ...........");
//		
//		JSONObject req = new JSONObject(URLDecoder.decode(course, "UTF-8"));
//		JSONObject resp = new JSONObject();
//		
//		String exist = req.getString("course");
//		
//		
//		List<Admin> admins = as.getAll(exist);
//		
//		JSONArray result = new JSONArray(admins);
//		
//		resp.put("result", result);
//		
////		for(Admin admin : admins)
////		{
////			resp.put(admin.getCourse_id() + "name", admin.getCourse_name());
////			resp.put(admin.getCourse_id() + "price", admin.getCourse_price());
////			resp.put(admin.getCourse_id() + "exist", admin.isCourse_exist());
////			resp.put(admin.getCourse_id() + "date", admin.getCourse_date());
////			resp.put(admin.getCourse_id() + "desc", admin.getCourse_desc());
////			resp.put(admin.getCourse_id() + "img", admin.getCourse_img());			
////		}
//		
//		return resp.toString();
//	}
	
	@ResponseBody
	@RequestMapping(value = "/CourseRemove", produces = "text/plain; charset=utf-8")
	public String deleteCourse(@RequestBody String course) throws JSONException, UnsupportedEncodingException
	{
		logger.debug(".......... 删除一行记录 ...........");
		
		JSONObject req = new  JSONObject(URLDecoder.decode(course, "UTF-8"));
		JSONObject resp = new JSONObject();
		
		int id = req.getInt("id");
		
		int result = as.delete(id);
		
		resp.put("result", result);
		
		return resp.toString();
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/CourseSave", produces = "text/plain; charset=utf-8")
	public String addCourse(@RequestBody String course) throws JSONException, UnsupportedEncodingException
	{
		logger.debug(".......... 添加一行数据 ...........");
		
		JSONObject req = new JSONObject(URLDecoder.decode(course, "UTF-8"));
		JSONObject resp = new JSONObject();
		
		String name = req.getString("name");
		int price = req.getInt("price");
		boolean exist = req.getBoolean("exist");
		String date = req.getString("date");
		String desc = req.getString("desc");
		String img = req.getString("img");
		
		Admin admin = new Admin();
		admin.setCourse_name(name);
		admin.setCourse_price(price);
		admin.setCourse_exist(exist);
		admin.setCourse_date(date);
		admin.setCourse_desc(desc);
		admin.setCourse_img(img);
		
		int result = as.add(admin);
		resp.put("result", result);
		
		return resp.toString();	
	}
	
	@ResponseBody
	@RequestMapping(value = "/CourseUpdate", produces = "text/plain; charset=utf-8")
	public String updateCourse(@RequestBody String course) throws JSONException, UnsupportedEncodingException
	{
		logger.debug("............ 更新一行数据 ............");
		
		JSONObject req = new  JSONObject(URLDecoder.decode(course, "UTF-8"));
		JSONObject resp = new JSONObject();
		
		//int errorcode = 0;
		int id = req.getInt("id");
		
		
		String name = req.getString("name");
		int price = req.getInt("price");
		boolean exist = req.getBoolean("exist");
		String date = req.getString("date");
		String desc = req.getString("desc");
		String img = req.getString("img");
		
		Admin admin = new Admin();
		admin.setCourse_id(id);
		admin.setCourse_name(name);
		admin.setCourse_price(price);
		admin.setCourse_exist(exist);
		admin.setCourse_date(date);
		admin.setCourse_desc(desc);
		admin.setCourse_img(img);
		
		JSONObject row = new JSONObject( admin );
		
		int result = as.update(admin);
		
		resp.put("result", result);
		resp.put("row", row);
		
		return resp.toString();
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/CourseRemoveList", produces = "text/plain; charset=utf-8")
	public String deleteCourseList(@RequestBody String course) throws JSONException, UnsupportedEncodingException
	{
		logger.debug(".......... 删除多行记录 ...........");
		
		JSONObject req = new  JSONObject(URLDecoder.decode(course, "UTF-8"));
		JSONObject resp = new JSONObject();
		
		String idlist = req.getString("idlist");
		String[] ids = idlist.split(",");
		
		int result = as.deleteList(ids);
		
		resp.put("result", result);
		
		return resp.toString();
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/CoursePageIndex", produces = "text/plain; charset=utf-8")
	public String PageIndex(@RequestBody String course) throws JSONException, UnsupportedEncodingException
	{
		logger.debug(".......... 模糊查询,获取课程的列表 ...........");
		
		JSONObject req = new JSONObject(URLDecoder.decode(course, "UTF-8"));
		JSONObject resp = new JSONObject();
		
		String exist = req.getString("course");
		String filter = JsonUtil.getString(req, "filter", "");
		
		List<Admin> admins = as.getAll(exist, filter);
		
		JSONArray result = new JSONArray(admins);
		
		resp.put("result", result);
		
		return resp.toString();
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/CoursePageQuery", produces = "text/plain; charset=utf-8")
	public String PageQuery(@RequestBody String course) throws JSONException, UnsupportedEncodingException
	{
		logger.debug(".......... 分页查询,获取课程的列数据到前端 ...........");
		
		String jsreq = URLDecoder.decode(course, "UTF-8");
		
		JSONObject req = new JSONObject(jsreq);
		JSONObject resp = new JSONObject();
		
		int page =  req.getInt("page");
		JSONArray idlist = req.getJSONArray("idlist");
		
		// 输入要获取的ID列表
		ArrayList<Integer> ids = new ArrayList<Integer>();
		for(int i=0; i<idlist.length() ; i++)
		{
			JSONObject idobj = idlist.getJSONObject(i);
			int id = idobj.getInt("course_id");
			ids.add(id);
		}
		
		List<Admin> admins = as.SelectAll(ids);
		
		// 将查询的结果按输入idlist的顺序排序
		ArrayList sortedRows = new ArrayList();
		for(Integer id : ids)
		{
			for(Admin admin : admins)
			{
				if(admin.getCourse_id() == id)
				{
					sortedRows.add(admin);
					break;
				}
			}
		}
		
		List rows = sortedRows;
		
		JSONArray result = new JSONArray(rows);
		
		resp.put("result", result);
		resp.put("page", page);
		
		return resp.toString();
		
	}
}
