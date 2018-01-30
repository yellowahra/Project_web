package com.daengdaeng.cdto;

import java.sql.Timestamp;

public class CalendarDto {
	int nId;
	String cid;
	String dname;
	String ndate;
	String ntime;
	String ntype;
	String nmemo;
	Timestamp writeDate;

	public CalendarDto(int nId, String cid, String dname, String ndate, String ntime, String ntype, String nmemo, Timestamp writeDate) {

		this.nId = nId;
		this.cid = cid;
 		this.dname = dname;
		this.ndate = ndate;
		this.ntime = ntime;
		this.ntype = ntype;
		this.nmemo = nmemo;
		this.writeDate = writeDate;
	}
	public int getnId() {
		return nId;
	}
	public void setnId(int nId) {
		this.nId = nId;
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
	
	public String getndate() {
		return ndate;
	}
	public void setndate(String ndate) {
		this.ndate = ndate;
	}
	public String getntime() {
		return ntime;
	}
	public void setntime(String ntime) {
		this.ntime = ntime;
	}
	public String getntype() {
		return ntype;
	}
	public void setntype(String ntype) {
		this.ntype = ntype;
	}
	
	public String getnmemo() {
		return nmemo;
	}
	public void setnmemo(String nmemo) {
		this.nmemo = nmemo;
	}
	public Timestamp getwriteDate() {
		return writeDate;
	}
	public void setwriteDate(Timestamp writeDate) {
		this.writeDate = writeDate;
	}

}
