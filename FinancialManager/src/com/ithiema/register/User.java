package com.ithiema.register;

public class User {

	private String id;
	private String uname;
	private String upassword;
	private String usex;
	private String umail;
	private String utnumber;
	private int major;
	private String stat;
	
	public String getId(){
		return id;
	}
	public void setId(String id) {
		this.id=id;
	}
	public String getUname(){
		return uname;
	}
	public void setUname(String uname) {
		this.uname=uname;
	}
	public String getUpassword(){
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword=upassword;
	}
	public String getUsex(){
		return usex;
	}
	public void setUsex(String usex) {
		this.usex=usex;
	}
	public String getUmail(){
		return umail;
	}
	public void setUmail(String umail) {
		this.umail=umail;
	}
	public String getUtnumber(){
		return utnumber;
	}
	public void setUtnumber(String utnumber) {
		this.utnumber=utnumber;
	}
	public int getMajor(){
		return major;
	}
	public void setMajor(int major) {
		this.major=major;
	}
	public String getStat(){
		return stat;
	}
	public void setStat(String stat) {
		this.stat=stat;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + uname + ", upassword=" + upassword + ", usex=" + usex + ", umail="
				+ umail + ", utnumber=" + utnumber + "]";
	}
}

