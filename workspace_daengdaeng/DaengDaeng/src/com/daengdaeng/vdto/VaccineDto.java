package com.daengdaeng.vdto;

import java.sql.Timestamp;

public class VaccineDto {
	int vId;
	String cid;
	String dname;
	String vname;
	String vinjdate;
	String vseff;
	String vmemo;
	Timestamp vDate;
	
	
	
	public VaccineDto(int vId, String cid, String dname, String vname, String vinjdate, String vseff, String vmemo, Timestamp vDate) {

		this.vId = vId;
		this.cid = cid;
 		this.dname = dname;
		this.vname = vname;
		this.vinjdate=vinjdate;
		this.vseff=vseff;
		this.vmemo=vmemo;
		this.vDate = vDate;
	}
	public int getvId() {
		return vId;
	}
	public void setvId(int vId) {
		this.vId = vId;
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
	
	
	public String getvname() {
		return vname;
	}
	public void setvname(String vname) {
		this.vname = vname;
	}
	public String getvinjdate() {
		return vinjdate;
	}
	public void setvinjdate(String vinjdate) {
		this.vinjdate = vinjdate;
	}
	public String getvseff() {
		return vseff;
	}
	public void setvseff(String vseff) {
		this.vseff = vseff;
	}
	public String getvmemo() {
		return vmemo;
	}
	public void setvmemo(String vmemo) {
		this.vmemo = vmemo;
	}
	
	public Timestamp getvDate() {
		return vDate;
	}
	public void setvDate(Timestamp vDate) {
		this.vDate = vDate;
	}
	
	
}
