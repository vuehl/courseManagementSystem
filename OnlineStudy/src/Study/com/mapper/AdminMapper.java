package Study.com.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import Study.com.model.Admin;


public interface AdminMapper
{
	public int add(Admin course);
	
	public int update(Admin user);
	
	public int delete(int id);
	
	public List<Admin> getAll(@Param("exist") String exist, @Param("filter") String filter);
	
	public int deleteList(String[] ids);
	
	public List<Admin> SelectAll(@Param("ids") ArrayList<Integer> ids);
}
