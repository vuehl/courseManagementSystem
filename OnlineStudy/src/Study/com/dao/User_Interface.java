package Study.com.dao;


import Study.com.common.CommonDao;
import Study.com.model.User;

public interface User_Interface extends CommonDao{
    
	//����ǵ�½�Ĳ���
	int user_Login(Integer userName,String userPwd);
	
	//�����ע��Ĳ���
	int user_Register(User user);
	
}
