package com.daengdaeng.mdto;

import java.sql.Timestamp;

public class MedicineDto {
	int mId;
	String cid;
	String dname;
	String mname;
	String mdosage;
	String mfreq;
	String mseff;
	String mmemo;
	Timestamp mDate;
	
	
	
	public MedicineDto(int mId, String cid, String dname, String mname, String mdosage, String mfreq, String mseff, String mmemo, Timestamp mDate) {

		this.mId = mId;
		this.cid = cid;
 		this.dname = dname;
		this.mname = mname;
		this.mdosage=mdosage;
		this.mfreq=mfreq;
		this.mseff=mseff;
		this.mmemo=mmemo;
		this.mDate = mDate;
	}
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
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
	public String getmname() {
		return mname;
	}
	public void setmname(String mname) {
		this.mname = mname;
	}
	public String getmdosage() {
		return mdosage;
	}
	public void setmdosage(String mdosage) {
		this.mdosage = mdosage;
	}
	public String getmfreq() {
		return mfreq;
	}
	public void setmfreq(String mfreq) {
		this.mfreq = mfreq;
	}
	public String getmseff() {
		return mseff;
	}
	public void setmseff(String mseff) {
		this.mseff = mseff;
	}
	public String getmmemo() {
		return mmemo;
	}
	public void setmmemo(String mmemo) {
		this.mmemo = mmemo;
	}
	public Timestamp getmDate() {
		return mDate;
	}
	public void setmDate(Timestamp mDate) {
		this.mDate = mDate;
	}
	
	
}
