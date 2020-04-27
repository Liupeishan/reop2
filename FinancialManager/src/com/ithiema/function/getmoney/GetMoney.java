package com.ithiema.function.getmoney;

public class GetMoney {

	private String id;
	private int fouraa1;
	private String fourac1;
	private int fourad1;
	private int fourba1;
	private String fourbc1;
	private int fourbd1;
	private String fourda1;
	private String fourdb1;
	private int fourdc1;
	private int fourdd1;
	private int fourab1;
	
	private int fouraa2;
	private String fourac2;
	private int fourad2;
	private int fourba2;
	private String fourbc2;
	private int fourbd2;
	private String fourda2;
	private String fourdb2;
	private int fourdc2;
	private int fourdd2;
	private int fourab2;
	
	public String getId(){
		return id;
	}
	public void setId(String id) {
		this.id=id;
	}
	//1
	public void setFouraa1(int fouraa1) {
		this.fouraa1=fouraa1;
	}
	public int getFouraa1() {
		return fouraa1;
	}
	
	public void setFourac1(String fourac1) {
		this.fourac1=fourac1;
	}
	public String getFourac1() {
		return fourac1;
	}
	public void setFourad1(int fourad1) {
		this.fourad1=fourad1;
	}
	public int getFourad1() {
		return fourad1;
	}
	public void setFourba1(int fourba1) {
		this.fourba1=fourba1;
	}
	public int getFourba1() {
		return fourba1;
	}
	public void setFourbc1(String fourbc1) {
		this.fourbc1=fourbc1;
	}
	public String getFourbc1() {
		return fourbc1;
	}
	public void setFourbd1(int fourbd1) {
		this.fourbd1=fourbd1;
	}
	public int getFourbd1() {
		return fourbd1;
	}
	public void setFourda1(String fourda1) {
		this.fourda1=fourda1;
	}
	public String getFourda1() {
		return fourda1;
	}
	public void setFourdb1(String fourdb1) {
		this.fourdb1=fourdb1;
	}
	public String getFourdb1() {
		return fourdb1;
	}
	public void setFourdc1(int fourdc1) {
		this.fourdc1=fourdc1;
	}
	public int getFourdc1() {
		return fourdc1;
	}
	public void setFourdd1(int fourdd1) {
		this.fourdd1=fourdd1;
	}
	public int getFourdd1() {
		return fourdd1;
	}
	public void setFourab1(int fourab1) {
		this.fourab1=fourab1;
	}
	public int getFourab1() {
		return fourab1;
	}
	
	//2
	public void setFouraa2(int fouraa2) {
		this.fouraa2=fouraa2;
	}
	public int getFouraa2() {
		return fouraa2;
	}
	
	public void setFourac2(String fourac2) {
		this.fourac2=fourac2;
	}
	public String getFourac2() {
		return fourac2;
	}
	public void setFourad2(int fourad2) {
		this.fourad2=fourad2;
	}
	public int getFourad2() {
		return fourad2;
	}
	public void setFourba2(int fourba2) {
		this.fourba2=fourba2;
	}
	public int getFourba2() {
		return fourba2;
	}
	public void setFourbc2(String fourbc2) {
		this.fourbc2=fourbc2;
	}
	public String getFourbc2() {
		return fourbc2;
	}
	public void setFourbd2(int fourbd2) {
		this.fourbd2=fourbd2;
	}
	public int getFourbd2() {
		return fourbd2;
	}
	public void setFourda2(String fourda2) {
		this.fourda2=fourda2;
	}
	public String getFourda2() {
		return fourda2;
	}
	public void setFourdb2(String fourdb2) {
		this.fourdb2=fourdb2;
	}
	public String getFourdb2() {
		return fourdb2;
	}
	public void setFourdc2(int fourdc2) {
		this.fourdc2=fourdc2;
	}
	public int getFourdc2() {
		return fourdc2;
	}
	public void setFourdd2(int fourdd2) {
		this.fourdd2=fourdd2;
	}
	public int getFourdd2() {
		return fourdd2;
	}
	public void setFourab2(int fourab2) {
		this.fourab2=fourab2;
	}
	public int getFourab2() {
		return fourab2;
	}
	
	public String toString1() {
		return "[债券利息率：" + fouraa1  + "%, 债权融资总额："+ fourac1 +"万, 债券费用率："+ fourad1 +"%, 借款利息率：" + fourba1 +
				"%, 借款融资总额：" + fourbc1 + "万, 借款费用率：" + fourbd1 +"%, 基期股利："+ fourda1 +"万, 发行股票筹资总额：" + fourdb1 +
				 "万, 股票费用率：" + fourdc1 + "%, 股票增长率：" + fourdd1 + "%, 所得税税率" + fourab1 + "%]";
	}
	
	public String toString2() {
		return "[债券利息率：" + fouraa2  + "%, 债权融资总额："+ fourac2 +"万, 债券费用率："+ fourad2 +"%, 借款利息率：" + fourba2 +
				"%, 借款融资总额：" + fourbc2 + "万, 借款费用率：" + fourbd2 +"%, 基期股利："+ fourda2 +"万, 发行股票筹资总额：" + fourdb2 +
				 "万, 股票费用率：" + fourdc2 + "%, 股票增长率：" + fourdd2 + "%, 所得税税率" + fourab2 + "%]";
	}
	
	public double Key(int i,int t,int f) {
		double k=(i*(1-t*0.01)*0.01)/(1-f*0.01);
		return k;
	}
	public double prop1(String m) {
		return Double.parseDouble(m)/(Double.parseDouble(fourac1)+Double.parseDouble(fourbc1)+Double.parseDouble(fourdb1));
	}
	public double prop2(int m) {
		return m/(Double.parseDouble(fourac2)+Double.parseDouble(fourbc2)+Double.parseDouble(fourdb2));
	}
	public double getMoney1() {
		double K1=Key(fouraa1,fourab1,fourad1)*prop1(fourac1);
		double k2=Key(fourba1,fourab1,fourbd1)*prop1(fourbc1);
		double k3=((Double.parseDouble(fourda1)*fourdd1)/(Double.parseDouble(fourdb1)*(1-fourdc1*0.01)))*prop1(fourdb1)+fourdd1*0.01;
		return K1+k2+k3;
	}
	public double getMoney2() {
		double K1=Key(fouraa2,fourab2,fourad2)*prop1(fourac2);
		double k2=Key(fourba2,fourab2,fourbd2)*prop1(fourbc2);
		double k3=((Double.parseDouble(fourda2)*fourdd2)/(Double.parseDouble(fourdb2)*(1-fourdc2*0.01)))*prop1(fourdb1)+fourdd1*0.01;
		return K1+k2+k3;
	}
	
	public String equal() {
		if(getMoney1()>getMoney2()) {
			return "方案一";
		}else if(getMoney1()==getMoney2()) {
			return "两个方案成本一样大";
		}else {
			return "方案二";
		}
	}
	
}
