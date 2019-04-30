package Study.com.model;

import java.util.List;

public class Finance {
	private int learningCoin;
	private List<Bill> bills;
	
	public int getLearningCoin() {
		return learningCoin;
	}
	public void setLearningCoin(int learningCoin) {
		this.learningCoin = learningCoin;
	}
	public List<Bill> getBills() {
		return bills;
	}
	public void setBills(List<Bill> bills) {
		this.bills = bills;
	}
	
}
