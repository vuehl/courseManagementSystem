package Study.com.serviceImpl;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Study.com.dao.FinanceMapper;
import Study.com.model.Bill;
import Study.com.service.FinanceService;

/**
 * 财务接口的实现类
 * @author XSM
 *
 */

@Service
public class FinanceServiceImpl implements FinanceService{
	
	@Autowired
	private FinanceMapper financeMapper;
	//private OrderMapper orderMapper;

	public int payMoney(Bill order) {
		Bill bill = new Bill();
		bill.setBill_type(0);
		bill.setBill_detail(order.getBill_detail());
		bill.setBill_money(order.getBill_money());
		bill.setBill_datetime(new Timestamp(System.currentTimeMillis()));
		financeMapper.insertBill(bill);
		System.out.println("支付成功！");
		//orderMapper.deleteOrder(order.getOrderId);//删除订单
		financeMapper.updateLearningCoin(financeMapper.selectLearningCoin()-bill.getBill_money());
		System.out.println(bill);
		return 0;
	}

	public int recharge(int money) {
		Bill bill = new Bill();
		bill.setBill_type(1);
		bill.setBill_detail("学习网-学习币");
		bill.setBill_money(money);
		bill.setBill_datetime(new Timestamp(System.currentTimeMillis()));
		financeMapper.insertBill(bill);
		System.out.println("充值成功！");
		financeMapper.updateLearningCoin(financeMapper.selectLearningCoin()+money*10);
		System.out.println(bill);
		return 0;
	}

	public int refund(int coin) {
		Bill bill = new Bill();
		bill.setBill_type(2);
		bill.setBill_detail("学习网-学习币");
		bill.setBill_money(coin);
		bill.setBill_datetime(new Timestamp(System.currentTimeMillis()));
		financeMapper.insertBill(bill);
		System.out.println("退款成功！");
		financeMapper.updateLearningCoin(financeMapper.selectLearningCoin()-coin);
		System.out.println(bill);
		return 0;
	}

	public int showBalance() {
		return financeMapper.selectLearningCoin();
	}

	public List<Bill> showBills() {
		return financeMapper.selectBills();
	}

}
