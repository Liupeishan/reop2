package com.ithiema.function.project;

public class Project {
	
	private int threeaa;
	private int threeab;
	private int threeac;
	private int threead;
	private int threeaf;
	private int threeba;
	private int threeca;
	
	public void setThreeaa(int threeaa) {
		this.threeaa=threeaa;
	}
	public int getThreeaa() {
		return threeaa;
	}
	public void setThreeab(int threeab) {
		this.threeab=threeab;
	}
	public int getThreeab() {
		return threeab;
	}
	public void setThreeac(int threeac) {
		this.threeac=threeac;
	}
	public int getThreeac() {
		return threeac;
	}
	public void setThreead(int threead) {
		this.threead=threead;
	}
	public int getThreead() {
		return threead;
	}
	public void setThreeaf(int threeaf) {
		this.threeaf=threeaf;
	}
	public int getThreeaf() {
		return threeaf;
	}
	public void setThreeba(int threeba) {
		this.threeba=threeba;
	}
	public int getThreeba() {
		return threeba;
	}
	public void setThreeca(int threeca) {
		this.threeca=threeca;
	}
	public int getThreeca() {
		return threeca;
	}
	
	public String toString() {
		return "[基期销售总额：" + threeaa  + "万, 基期敏感性资产总额：" + threeab +"万, 基期敏感性负债总额："
				 + threeac + "万, 内部留存资金：" + threead +"万, 基期利润：" + threeaf +"万, 预期销售总额："+ threeba +
				 "万, 股利支付率：" + threeca +"%]";
	}
	public double project() {
		
		double outcome;
		
		double threea=((this.threeab-this.threeac)/this.threeaa)*this.threeba;
		double threeb=(threeaf/threeaa)*threeba*(1-threeca*0.01);
		outcome=(threea-threeb-threead);
		
		return outcome;
	}
}
