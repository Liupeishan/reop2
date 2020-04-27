package com.ithiema.function.chase;

public class Chase {

	private String id;
	private int fiveaa1;
	private int fiveab1;
	private int fiveac1;
	private int fivead1;
	
	private int fiveaa2;
	private int fiveab2;
	private int fiveac2;
	private int fivead2;
	
	public String getId(){
		return id;
	}
	public void setId(String id) {
		this.id=id;
	}
	
	public void setFiveaa1(int fiveaa1) {
		this.fiveaa1=fiveaa1;
	}
	public int getFiveaa1() {
		return fiveaa1;
	}
	public void setFiveab1(int fiveab1) {
		this.fiveab1=fiveab1;
	}
	public int getFiveab1() {
		return fiveab1;
	}
	public void setFiveac1(int fiveac1) {
		this.fiveac1=fiveac1;
	}
	public int getFiveac1() {
		return fiveac1;
	}
	public void setFivead1(int fivead1) {
		this.fivead1=fivead1;
	}
	public int getFivead1() {
		return fivead1;
	}
	//2
	public void setFiveaa2(int fiveaa2) {
		this.fiveaa2=fiveaa2;
	}
	public int getFiveaa2() {
		return fiveaa2;
	}
	public void setFiveab2(int fiveab2) {
		this.fiveab2=fiveab2;
	}
	public int getFiveab2() {
		return fiveab2;
	}
	public void setFiveac2(int fiveac2) {
		this.fiveac2=fiveac2;
	}
	public int getFiveac2() {
		return fiveac2;
	}
	public void setFivead2(int fivead2) {
		this.fivead2=fivead2;
	}
	public int getFivead2() {
		return fivead2;
	}
	
	public String toString1() {
		
		return "[ 现金持有量：" + fiveaa1 + "万，机会成本率：" + fiveab1 + "%，管理费用："
				+ fiveac1 + "万，短缺成本：" + fivead1 + "万]";
	}
	public String toString2() {
		
		return "[ 现金持有量：" + fiveaa2 + "万，机会成本率：" + fiveab2 + "%，管理费用："
				+ fiveac2 + "万，短缺成本：" + fivead2 + "万]";
	}
	public double chase1() {
		double outcome= (fiveaa1*fiveab1*0.01+fiveac1+fivead1);
		return outcome;
	}
	public double chase2() {
		double outcome= (fiveaa2*fiveab2*0.01+fiveac2+fivead2);
		return outcome;
	}
	public String equal() {
		double outcome1,outcome2;
		outcome1= (fiveaa1*fiveab1*0.01+fiveac1+fivead1);
		outcome2= (fiveaa2*fiveab2*0.01+fiveac2+fivead2);
		
		if(outcome1>outcome2) {
			return "方案一";
		}else if(outcome1==outcome2) {
			return "两个方案成本一样大";
		}else {
			return "方案二";
		}
	}
}
