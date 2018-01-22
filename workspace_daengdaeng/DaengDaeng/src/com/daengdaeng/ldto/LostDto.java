package com.daengdaeng.ldto;

import java.sql.Timestamp;

public class LostDto {
	int lId;
	String cid;
	String lbreed;
	String lage;
	String lgender;
	String llocation;
	String lfilename;
	String lcontact;
	String lmemo;
	
	Timestamp lDate;
	
	int lHit;
	
	public LostDto(int lId, String cid, String lbreed, String lage, String lgender, String llocation, String lfilename,
			String lcontact, String lmemo, Timestamp lDate, int lHit) {

		this.lId = lId;
		this.cid = cid;
 		this.lbreed = lbreed;
		this.lage = lage;
		this.lgender = lgender;
		this.llocation = llocation;
		this.lfilename = lfilename;
		this.lcontact = lcontact;
		this.lmemo = lmemo;
		this.lDate = lDate;
		this.lHit = lHit;
		
	}
	public int getlId() {
		return lId;
	}
	public void setlId(int lId) {
		this.lId = lId;
	}
	public String getcid() {
		return cid;
	}
	public void setcid(String cid) {
		this.cid = cid;
	}
	public String getlbreed() {
		return lbreed;
	}
	public void setlbreed(String lbreed) {
		this.lbreed = lbreed;
	}
	public String getlage() {
		return lage;
	}
	public void setlage(String lage) {
		this.lage = lage;
	}
	
	public String getlgender() {
		return lgender;
	}
	public void setlgender(String lgender) {
		this.lgender = lgender;
	}
	public String getllocation() {
		return llocation;
	}
	public void setllocation(String llocation) {
		this.llocation = llocation;
	}
	public String getlfilename() {
		return lfilename;
	}
	public void setlfilename(String lfilename) {
		this.lfilename = lfilename;
	}
	
	public String getlcontact() {
		return lcontact;
	}
	public void setlcontact(String lcontact) {
		this.lcontact = lcontact;
	}
	public String getlmemo() {
		return lmemo;
	}
	public void setlmemo(String lmemo) {
		this.lmemo = lmemo;
	}
		
	public Timestamp getlDate() {
		return lDate;
	}
	public void setlDate(Timestamp lDate) {
		this.lDate = lDate;
	}
	public int getlHit() {
		return lHit;
	}
	public void setlHit(int lHit) {
		this.lHit = lHit;
	}
	
	
	
	
}
