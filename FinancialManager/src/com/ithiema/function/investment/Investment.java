package com.ithiema.function.investment;

public class Investment {

	private String id;
	private String twoaa1;
	private int twoab1;
	private int twoac1;
	
	private String twoaa2;
	private int twoab2;
	private int twoac2;
	
	public String getId(){
		return id;
	}
	public void setId(String id) {
		this.id=id;
	}
	
	public void setTwoaa1(String twoaa1) {
		this.twoaa1=twoaa1;
	}
	public String getTwoaa1() {
		return twoaa1;
	}
	public void setTwoab1(int twoab1) {
		this.twoab1=twoab1;
	}
	public int getTwoaba1() {
		return twoab1;
	}
	public void setTwoac1(int twoac1) {
		this.twoac1=twoac1;
	}
	public int getTwoac1() {
		return twoac1;
	}
	
	public void setTwoaa2(String twoaa2) {
		this.twoaa2=twoaa2;
	}
	public String getTwoaa2() {
		return twoaa2;
	}
	public void setTwoab2(int twoab2) {
		this.twoab2=twoab2;
	}
	public int getTwoaba2() {
		return twoab2;
	}
	public void setTwoac2(int twoac2) {
		this.twoac2=twoac2;
	}
	public int getTwoac2() {
		return twoac2;
	}
	
	public String toString1() {
		String sql;
		if(invest1()>=twoac1*0.01) {
			sql="方案可行";
		}else {
			sql="方案不可行";
		}
		return "[贝塔系数：" + twoaa1  + ", 无风险报酬率：" + twoab1 +"%, 股票市场期望收益率："
				+ twoac1 +"%]" +sql;
	}
	
	public String toString2() {
		String sql;
		if(invest2()>=twoac2*0.01) {
			sql="方案可行";
		}else {
			sql="方案不可行";
		}
		return "[贝塔系数：" + twoaa2  + ", 无风险报酬率：" + twoab2 +"%, 股票市场期望收益率："
				+ twoac2 +"%]" +sql;
	}
	
	public double invest1() {
		
		double outcome=0;
		outcome=(Double.parseDouble(twoaa1)*(twoac1-twoab1)*0.01+twoab1*0.01);
		return outcome;
	}
	public double invest2() {
		
		double outcome=0;
		outcome=(Double.parseDouble(twoaa2)*(twoac2-twoab2)*0.01+twoab2*0.01);
		return outcome;
	}
	
	public String equal() {
		
		if(invest1()>=twoac1*0.01||invest2()>=twoac2*0.01) {
			if(invest1()>invest2()) {
				return "方案一";
			}else if(invest1()==invest2()) {
				if(Float.parseFloat(twoaa1)>Float.parseFloat(twoaa2)) {
					return "方案一";
				}
				else if(Float.parseFloat(twoaa1)==Float.parseFloat(twoaa2)){
					return "方案一方案二一样";
				}else {
					return "方案二";
				}
			}else {
				return "方案二";
			}
		}else {
			return "两方案均不可行";
		}
		
	}
}
