package Study.com.model;

import java.util.Date;

/**
 * ������û��Ĳ���
 * @author hl
 *
 */
public class User {

	//�û���ID
	private Integer userId;
	
	//�û���
	private String  userName;
	
	//������û�������Ĳ���
	private String userPwd;
	
	//������û����Ա�
	private String userSex;
	
	//������û��ĵ�½ʱ��
	private Date userLog;
	
	//����ǲ�����������Ǹ�ID
	private Finance finance;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public Date getUserLog() {
		return userLog;
	}

	public void setUserLog(Date userLog) {
		this.userLog = userLog;
	}

	public Finance getFinance() {
		return finance;
	}

	public void setFinance(Finance finance) {
		this.finance = finance;
	}

}
