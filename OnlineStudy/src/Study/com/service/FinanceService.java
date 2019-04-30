package Study.com.service;

import java.util.List;

import Study.com.model.Bill;

/**
 * 财务模块的接口
 * @author XSM
 *
 */
public interface FinanceService {
	/*
	 * 消费支付
	 */
	int payMoney(Bill order);
	
	/*
	 * 充值
	 */
	int recharge(int money);
	
	/*
	 * 退款
	 */
	int refund(int money);
	
	/*
	 * 显示余额
	 */
	int showBalance();
	
	/*
	 * 显示账单
	 */
	List<Bill> showBills();
	
}
