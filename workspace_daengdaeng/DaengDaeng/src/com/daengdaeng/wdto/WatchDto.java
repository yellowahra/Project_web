package com.daengdaeng.wdto;

import java.sql.Timestamp;

public class WatchDto {
	int wId;
	String cid;
	String wbreed;
	String wage;
	String wgender;
	String wlocation;
	String wfilename;
	String wcontact;
	String wmemo;
	
	Timestamp wDate;
	
	int wHit;
	
	public WatchDto(int wId, String cid, String wbreed, String wage, String wgender, String wlocation, String wfilename,
			String wcontact, String wmemo, Timestamp wDate, int wHit) {

		this.wId = wId;
		this.cid = cid;
 		this.wbreed = wbreed;
		this.wage = wage;
		this.wgender = wgender;
		this.wlocation = wlocation;
		this.wfilename = wfilename;
		this.wcontact = wcontact;
		this.wmemo = wmemo;
		this.wDate = wDate;
		this.wHit = wHit;
		
	}
	public int getwId() {
		return wId;
	}
	public void setwId(int wId) {
		this.wId = wId;
	}
	public String getcid() {
		return cid;
	}
	public void setcid(String cid) {
		this.cid = cid;
	}
	public String getwbreed() {
		return wbreed;
	}
	public void setwbreed(String wbreed) {
		this.wbreed = wbreed;
	}
	public String getwage() {
		return wage;
	}
	public void setlage(String wage) {
		this.wage = wage;
	}
	
	public String getwgender() {
		return wgender;
	}
	public void setwgender(String wgender) {
		this.wgender = wgender;
	}
	public String getwlocation() {
		return wlocation;
	}
	public void setwlocation(String wlocation) {
		this.wlocation = wlocation;
	}
	public String getwfilename() {
		return wfilename;
	}
	public void setwfilename(String wfilename) {
		this.wfilename = wfilename;
	}
	
	public String getwcontact() {
		return wcontact;
	}
	public void setwcontact(String wcontact) {
		this.wcontact = wcontact;
	}
	public String getwmemo() {
		return wmemo;
	}
	public void setwmemo(String wmemo) {
		this.wmemo = wmemo;
	}
		
	public Timestamp getwDate() {
		return wDate;
	}
	public void setwDate(Timestamp wDate) {
		this.wDate = wDate;
	}
	public int getwHit() {
		return wHit;
	}
	public void setwHit(int wHit) {
		this.wHit = wHit;
	}
	
	
	
	
}
