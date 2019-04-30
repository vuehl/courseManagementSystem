package Study.com.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Study.com.mapper.AdminMapper;
import Study.com.model.Admin;
import Study.com.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminMapper admin; 
	
	@Override
	public int add(Admin course)
	{
		// TODO Auto-generated method stub
		return admin.add(course);
	}

	@Override
	public int update(Admin user)
	{
		// TODO Auto-generated method stub
		return admin.update(user);
	}

	@Override
	public int delete(int id)
	{
		// TODO Auto-generated method stub
		return admin.delete(id);
	}

	public List<Admin> getAll(String exist, String filter)
	{
		// TODO Auto-generated method stub
		return admin.getAll(exist, filter);
	}

	@Override
	public int deleteList(String[] ids)
	{
		// TODO Auto-generated method stub
		return admin.deleteList(ids);
	}

	@Override
	public List<Admin> SelectAll(ArrayList<Integer> ids)
	{
		// TODO Auto-generated method stub
		return admin.SelectAll(ids);
	}

}
