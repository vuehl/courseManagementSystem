package Study.com.common;

import java.util.List;

/**
 * 这个是公共的接口,在Dao就继承接口就是了
 * @author hl
 *
 */
public interface CommonDao<T> {

	//添加的方法
	int insert(T t);
	
	//删除的方法
	int delete(int id);
	
	//更新的方法
	int update(T t);
	
	//查询的方法
	List<T> select(int id);
	
	
	
}
