package com.daengdaeng.allergydto;

import java.sql.Timestamp;

public class AllergyDto {
	int alId;
	String cid;
	String dname;
	String alredate;
	String alreason;
	String alreaction;
	String alseverity;
	String almemo;
	Timestamp alDate;
	
	
	
	public AllergyDto(int alId, String cid, String dname, String alredate, String alreason, String alreaction, String alseverity, String almemo, Timestamp alDate) {

		this.alId = alId;
		this.cid = cid;
 		this.dname = dname;
		this.alredate = alredate;
		this.alreason=alreason;
		this.alreaction=alreaction;
		this.alseverity=alseverity;
		this.almemo=almemo;
		this.alDate = alDate;
	}
	public int getalId() {
		return alId;
	}
	public void setalId(int alId) {
		this.alId = alId;
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
	
	public String getalredate() {
		return alredate;
	}
	public void setalredate(String alredate) {
		this.alredate = alredate;
	}
	public String getalreason() {
		return alreason;
	}
	public void setalreason(String alreason) {
		this.alreason = alreason;
	}
	public String getalreaction() {
		return alreaction;
	}
	public void setalreaction(String alreaction) {
		this.alreaction = alreaction;
	}
	public String getalseverity() {
		return alseverity;
	}
	public void setalseverity(String alseverity) {
		this.alseverity = alseverity;
	}
	public String getalmemo() {
		return almemo;
	}
	public void setalmemo(String almemo) {
		this.almemo = almemo;
	}
	public Timestamp getalDate() {
		return alDate;
	}
	public void setalDate(Timestamp alDate) {
		this.alDate = alDate;
	}
	
	
}
