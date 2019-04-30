package Study.com.common;

import java.util.List;

/**
 * ����ǹ����Ľӿ�,��Dao�ͼ̳нӿھ�����
 * @author hl
 *
 */
public interface CommonDao<T> {

	//��ӵķ���
	int insert(T t);
	
	//ɾ���ķ���
	int delete(int id);
	
	//���µķ���
	int update(T t);
	
	//��ѯ�ķ���
	List<T> select(int id);
	
	
	
}
