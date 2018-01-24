package com.daengdaeng.kgdto;

import java.sql.Timestamp;

public class KgDto {
	int sId;
	String cid;
	String dname;
	String dweight;
	Timestamp sDate;
	
	
	
	public KgDto(int sId, String cid, String dname, String dweight, Timestamp sDate) {

		this.sId = sId;
		this.cid = cid;
 		this.dname = dname;
		this.dweight = dweight;
		this.sDate = sDate;
	}
	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	public String getcid() {
		return cid;
	}
	public void setcid(String cid) {
		this.cid = cid;
	}
	public String getdname() {
		return dname;
	}
	public void setdname(String dname) {
		this.dname = dname;
	}
	public String getdweight() {
		return dweight;
	}
	public void setdweight(String dweight) {
		this.dweight = dweight;
	}
	
	
	public Timestamp getsDate() {
		return sDate;
	}
	public void setsDate(Timestamp sDate) {
		this.sDate = sDate;
	}
	
	
}
