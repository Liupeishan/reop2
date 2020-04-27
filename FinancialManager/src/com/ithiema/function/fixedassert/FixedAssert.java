package com.ithiema.function.fixedassert;

import java.sql.SQLException;

public class FixedAssert {
	
	private String id;
	private String oneaa1= "0";
	private int oneba1;
	private String onebb1="0";
	private String onebc1="0";
	private int oneca1;
	private String onecb1="0";
	private int oneda1;
	private String onedb1="0";
	private String onedc1="0";
	private int onefa1;
	private int onefb1;

	private String oneaa2= "0";
	private int oneba2;
	private String onebb2="0";
	private String onebc2="0";
	private int oneca2;
	private String onecb2="0";
	private int oneda2;
	private String onedb2="0";
	private String onedc2="0";
	private int onefa2;
	private int onefb2;
	
	public String getId(){
		return id;
	}
	public void setId(String id) {
		this.id=id;
	}
	
	public void setOneaa1(String oneaa1){
		this.oneaa1=oneaa1;
	}
	public String getOneaa1() {
		return oneaa1;
	}
	public void setOneba1(int oneba1){
		this.oneba1=oneba1;
	}
	public int getOneba1() {
		return oneba1;
	}
	public void setOnebb1(String onebb1){
		this.onebb1=onebb1;
	}
	public String getOnebb1() {
		return onebb1;
	}
	public void setOnebc1(String onebc1){
		this.onebc1=onebc1;
	}
	public String getOnebc1() {
		return onebc1;
	}
	public void setOneca1(int oneca1){
		this.oneca1=oneca1;
	}
	public int getOneca1() {
		return oneca1;
	}
	
	public void setOnecb1(String onecb1){
		this.onecb1=onecb1;
	}
	public String getOnecb1() {
		return onecb1;
	}
	public void setOneda1(int oneda1){
		this.oneda1=oneda1;
	}
	public int getOneda1() {
		return oneda1;
	}
	public void setOnedb1(String onedb1){
		this.onedb1=onedb1;
	}
	public String getOnedb1() {
		return onedb1;
	}
	public void setOnedc1(String onedc1){
		this.onedc1=onedc1;
	}
	public String getOnedc1() {
		return onedc1;
	}
	public void setOnefa1(int onefa1){
		this.onefa1=onefa1;
	}
	public int getOnefa1() {
		return onefa1;
	}
	
	public int getOnefb1() {
		return onefb1;
	}
	public void setOnefb1(int onefb1){
		this.onefb1=onefb1;
	}
	
	public void setOneaa2(String oneaa2){
		this.oneaa1=oneaa2;
	}
	public String getOneaa2() {
		return oneaa2;
	}
	public void setOneba(int oneba2){
		this.oneba2=oneba2;
	}
	public int getOneba2() {
		return oneba2;
	}
	public void setOnebb2(String onebb2){
		this.onebb2=onebb2;
	}
	public String getOnebb2() {
		return onebb2;
	}
	public void setOnebc2(String onebc2){
		this.onebc2=onebc2;
	}
	public String getOnebc2() {
		return onebc2;
	}
	public void setOneca2(int oneca2){
		this.oneca2=oneca2;
	}
	public int getOneca2() {
		return oneca2;
	}
	
	public void setOnecb2(String onecb2){
		this.onecb2=onecb2;
	}
	public String getOnecb2() {
		return onecb2;
	}
	public void setOneda2(int oneda2){
		this.oneda2=oneda2;
	}
	public int getOneda2() {
		return oneda2;
	}
	public void setOnedb2(String onedb2){
		this.onedb2=onedb2;
	}
	public String getOnedb2() {
		return onedb2;
	}
	public void setOnedc2(String onedc2){
		this.onedc2=onedc2;
	}
	public String getOnedc2() {
		return onedc2;
	}
	public void setOnefa2(int onefa2){
		this.onefa2=onefa2;
	}
	public int getOnefa2() {
		return onefa2;
	}
	
	public int getOnefb2() {
		return onefb2;
	}
	public void setOnefb2(int onefb2){
		this.onefb2=onefb2;
	}
	public String toString1() throws ClassNotFoundException, SQLException {
		
		String sql;
		if(fixedassert1()>0.0) {
			sql="方案可行";
		}else {
			sql="方案不可行";
		}
		
		return "[初期投入（不包含固定资产和无形资产投入）：" + oneaa1 + "万, 固定资产使用年限：" + oneba1 + "年, 固定资产投资额：" + onebb1 + "万,固定资产净残值：" + onebc1 + "万, 无形资产使用年限："
				+ oneca1 + "年, 无形资产投资额：" + onecb1 +"万, 投资年限：" + oneda1 +"年, 每年投入：" + onedb1 +"万, 每年所得：" + onedc1 +"万, 所得税税率："
				+ onefa1 +"%, 折现率：" + onefb1 + "%]" +sql;
	}
	public String toString2() throws ClassNotFoundException, SQLException {
		
		String sql;
		if(fixedassert2()>0.0) {
			sql="方案可行";
		}else {
			sql="方案不可行";
		}
		return " [初期投入（不包含固定资产和无形资产投入）：" + oneaa2 + "万, 固定资产使用年限：" + oneba2 + "年, 固定资产投资额：" + onebb2 + "万,固定资产净残值：" + onebc2 + "万, 无形资产使用年限："
				+ oneca2 + "年, 无形资产投资额：" + onecb2 +"万, 投资年限：" + oneda2 +"年, 每年投入：" + onedb2 +"万, 每年所得：" + onedc2 +"万, 所得税税率："
				+ onefa2 +"%, 折现率：" + onefb2 + "%]" + sql;
	}
	GetValue getvalue=new GetValue();
	
	public double fixedassert1() throws ClassNotFoundException, SQLException {
		Value value=getvalue.getValue(this.onefb1,this.oneda1);
		double outcome = 0;
		double oneb,onec,oned;
		oneb=(Double.parseDouble(onebb1)-Double.parseDouble(this.onebc1))/this.oneba1;
		onec=(Double.parseDouble(onecb1))/this.oneba1;
		oned= (((Double.parseDouble(this.onedb1)-Double.parseDouble(this.onedc1)-oneb-onec)*(1-this.onefa1*0.01))+oneb+onec);
		outcome=oned*(value.getPVIFA())+(Float.parseFloat(this.onebc1)+oneb*(oneba1-oneda1))*(value.getPVIF())+
				(onec*(oneca1-oneda1))*(value.getPVIF())+(Double.parseDouble(this.oneaa1))*(value.getPVIF())-(Double.parseDouble(this.oneaa1));
		return outcome;
		
	}
	
	public double fixedassert2() throws ClassNotFoundException, SQLException {
		Value value=getvalue.getValue(this.onefb2,this.oneda2);
		double outcome = 0;
		double oneb,onec,oned;
		oneb=(Double.parseDouble(onebb2)-Double.parseDouble(this.onebc2))/this.oneba2;
		onec=(Double.parseDouble(onecb2))/this.oneba2;
		oned=(float) (((Double.parseDouble(this.onedb2)-Double.parseDouble(this.onedc2)-oneb-onec)*(1-this.onefa2*0.01))+oneb+onec);
		outcome=oned*(value.getPVIFA())+(Double.parseDouble(this.onebc2)+oneb*(oneba2-oneda2))*(value.getPVIF())+
				(onec*(oneca2-oneda2))*(value.getPVIF())+(Double.parseDouble(this.oneaa2))*(value.getPVIF())-(Double.parseDouble(this.oneaa2));
		return outcome;
		
	}
	
	public String equal() throws ClassNotFoundException, SQLException {
		if(fixedassert1()>0||fixedassert2()>0) {
			if(fixedassert1()>fixedassert2()) {
				return "方案一";
			}else if(fixedassert1()==fixedassert2()) {
				return "两方案一样";
			}else {
				return "方案二";
			}
		}else {
			return "两方案均不可行";
		}
	}
	
}
