package com.daengdaeng.photodto;

import java.sql.Timestamp;

public class PhotoDto {
	int pId;
	String cid;
	String dname;
	String ptitle;
	String pfile;
	String takendate;
	Timestamp pDate;
	
	
	
	public PhotoDto(int pId, String cid, String dname, String ptitle, String pfile, String takendate, Timestamp pDate) {

		this.pId = pId;
		this.cid = cid;
 		this.dname = dname;
		this.ptitle = ptitle;
		this.pfile=pfile;
		this.takendate=takendate;
		this.pDate=pDate;
		
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
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
	public String getptitle() {
		return ptitle;
	}
	public void setptitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getpfile() {
		return pfile;
	}
	public void setpfile(String pfile) {
		this.pfile = pfile;
	}
	
	public String gettakendate() {
		return takendate;
	}
	public void settakendate(String takendate) {
		this.takendate = takendate;
	}
	
	
	
	public Timestamp getpDate() {
		return pDate;
	}
	public void setpDate(Timestamp pDate) {
		this.pDate = pDate;
	}
	
	
}
