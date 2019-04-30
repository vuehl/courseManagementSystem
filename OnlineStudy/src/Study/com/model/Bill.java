package Study.com.model;

import java.sql.Timestamp;

/**
 * 账单
 * @author XSM
 *
 */
public class Bill {
	private int bill_id;
	private int bill_type;
	private Timestamp bill_datetime;
	private int bill_money;
	private String bill_detail;
	
	public int getBill_id() {
		return bill_id;
	}
	public void setBill_id(int bill_id) {
		this.bill_id = bill_id;
	}
	public int getBill_type() {
		return bill_type;
	}
	public void setBill_type(int bill_type) {
		this.bill_type = bill_type;
	}
	public Timestamp getBill_datetime() {
		return bill_datetime;
	}
	public void setBill_datetime(Timestamp bill_datetime) {
		this.bill_datetime = bill_datetime;
	}
	public int getBill_money() {
		return bill_money;
	}
	public void setBill_money(int bill_money) {
		this.bill_money = bill_money;
	}
	public String getBill_detail() {
		return bill_detail;
	}
	public void setBill_detail(String bill_detail) {
		this.bill_detail = bill_detail;
	}
	
	@Override
	public String toString() {
		String bill=null;
		if(bill_type==0){
			bill="消费 [bill_type=" + bill_type + ", bill_datetime=" + bill_datetime + ", bill_money= -" + bill_money
				+ ", bill_detail=" + bill_detail + "]";
		}else if(bill_type==1){
			bill="充值 [bill_type=" + bill_type + ", bill_datetime=" + bill_datetime + ", bill_money= -" + bill_money
				+ ", bill_detail=" + bill_detail + "]";
		}else {
			bill="退款 [bill_type=" + bill_type + ", bill_datetime=" + bill_datetime + ", bill_money= -" + bill_money
				+ ", bill_detail=" + bill_detail + "]";
		}
		return bill;
	}
	
}
