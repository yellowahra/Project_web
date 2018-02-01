package com.daengdaeng.joindto;

public class JoinDto {
	
	String cid;
	String cpw;
	String cname;
	String cemail;

	public JoinDto(String cid, String cpw, String cname, String cemail) {

		
		this.cid = cid;
 		this.cpw = cpw;
 		this.cname = cname;
		this.cemail = cemail;
	
	}
	
	public String getcid() {
		return cid;
	}
	public void setcid(String cid) {
		this.cid = cid;
	}
	public String getcpw() {
		return cpw;
	}
	public void setcpw(String cpw) {
		this.cpw = cpw;
	}
	
	public String getcname() {
		return cname;
	}
	public void setcname(String cname) {
		this.cname = cname;
	}
	
	
	public String getcemail() {
		return cemail;
	}
	public void setcemail(String cemail) {
		this.cemail = cemail;
	}
	
}
