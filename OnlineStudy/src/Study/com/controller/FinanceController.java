package Study.com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.org.apache.regexp.internal.recompile;

import Study.com.model.Bill;
import Study.com.model.User;
import Study.com.service.FinanceService;

/**
 * 财务控制类
 * @author XSM
 *
 */

@Controller
@RequestMapping("finance")
public class FinanceController {
	
	@Resource
	private FinanceService financeServiceImpl;
	
	/*
	 * 查看我的财务，包括余额以及账单
	 */
	@RequestMapping("myFinance")
	public String showFinance(User user,HttpSession hs){
		User lUser = (User) hs.getAttribute("user");
		lUser.getFinance().setLearningCoin(financeServiceImpl.showBalance());
		lUser.getFinance().setBills(financeServiceImpl.showBills());
		user.setFinance(lUser.getFinance());
		hs.setAttribute("user", user);
		return "XSM_finance.jsp";
	}
	
	@RequestMapping("showBills")
	public String showBills(ModelMap mm){
		List<Bill> myBills = financeServiceImpl.showBills();
		mm.addAttribute("BillList", myBills);
		return "XSM_finance.jsp";
	}
	
	@RequestMapping("payMoney")
	public String payMoney(Bill order){//得到订单
		int item = financeServiceImpl.payMoney(order);
		return "XSM_finance.jsp";
	}

	@RequestMapping("recharge")
	public String recharge(int rechargeMoney){//得到充值金额
		int item = financeServiceImpl.recharge(rechargeMoney);
		return "XSM_finance.jsp";
	}

	@RequestMapping("refund")
	public String refund(int refundMoney){//得到退款金额
		int balance=financeServiceImpl.showBalance();
		if(refundMoney <= balance){
			int item = financeServiceImpl.refund(refundMoney);
		}else {
			return "失败！";
		}
		return "XSM_finance.jsp";
	}

}
