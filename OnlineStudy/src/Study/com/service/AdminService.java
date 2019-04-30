package Study.com.service;

import java.util.ArrayList;
import java.util.List;

import Study.com.model.Admin;


public interface AdminService
{
	public int add(Admin course);
	
	public int update(Admin user);
	
	public int delete(int id);
	
	public List<Admin> getAll(String exist, String filter);

	public int deleteList(String[] ids);

	public List<Admin> SelectAll(ArrayList<Integer> ids);
}
