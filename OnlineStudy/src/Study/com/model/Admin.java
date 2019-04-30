package Study.com.model;

// 管理员
public class Admin
{
	public int course_id;
	public String course_name;
	public int course_price;
	public boolean course_exist;
	public String course_date;
	public String course_desc;
	public String course_img;
	
	public int getCourse_id()
	{
		return course_id;
	}
	public void setCourse_id(int course_id)
	{
		this.course_id = course_id;
	}
	public String getCourse_name()
	{
		return course_name;
	}
	public void setCourse_name(String course_name)
	{
		this.course_name = course_name;
	}
	public int getCourse_price()
	{
		return course_price;
	}
	public void setCourse_price(int course_price)
	{
		this.course_price = course_price;
	}
	public boolean isCourse_exist()
	{
		return course_exist;
	}
	public void setCourse_exist(boolean course_exist)
	{
		this.course_exist = course_exist;
	}
	public String getCourse_date()
	{
		return course_date;
	}
	public void setCourse_date(String date)
	{
		this.course_date = date;
	}
	public String getCourse_desc()
	{
		return course_desc;
	}
	public void setCourse_desc(String course_desc)
	{
		this.course_desc = course_desc;
	}
	public String getCourse_img()
	{
		return course_img;
	}
	public void setCourse_img(String course_img)
	{
		this.course_img = course_img;
	}
	@Override
	public String toString()
	{
		return "Admin [course_id=" + course_id + ", course_name=" + course_name
				+ ", course_price=" + course_price + ", course_exist="
				+ course_exist + ", course_date=" + course_date
				+ ", course_desc=" + course_desc + ", course_img=" + course_img
				+ "]";
	}
	


	
}
