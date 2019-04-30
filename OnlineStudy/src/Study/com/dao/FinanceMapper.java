package Study.com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import Study.com.model.Bill;

/**
 * 财务的数据库交互接口
 * @author XSM
 *
 */
public interface FinanceMapper {

	int insertBill(Bill bill);
	
	int deleteBill(@Param("bill_id") int bill_id);
	
	List<Bill> selectBills();
	
	int updateLearningCoin(@Param("money") int money);
	
	int selectLearningCoin();
	
}
