package com.daengdaeng.adto;

import java.sql.Timestamp;

public class AdoptDto {
	int aId;
	String cid;
	String abreed;
	String aage;
	String agender;
	String alocation;
	String filename;
	Timestamp aDate;
	int aHit;
	int aGroup;
	int aStep;
	int aIndent;
	public AdoptDto(int aId, String cid, String abreed, String aage, String agender, String alocation, String filename,
			Timestamp aDate, int aHit, int aGroup, int aStep, int aIndent) {

		this.aId = aId;
		this.cid = cid;
 		this.abreed = abreed;
		this.aage = aage;
		this.agender = agender;
		this.alocation = alocation;
		this.filename = filename;
		this.aDate = aDate;
		this.aHit = aHit;
		this.aGroup = aGroup;
		this.aStep = aStep;
		this.aIndent = aIndent;
	}
	public int getaId() {
		return aId;
	}
	public void setaId(int aId) {
		this.aId = aId;
	}
	public String getcid() {
		return cid;
	}
	public void setcid(String cid) {
		this.cid = cid;
	}
	public String getabreed() {
		return abreed;
	}
	public void setabreed(String abreed) {
		this.abreed = abreed;
	}
	public String getaage() {
		return aage;
	}
	public void setaage(String aage) {
		this.aage = aage;
	}
	
	public String getagender() {
		return agender;
	}
	public void setagender(String agender) {
		this.agender = agender;
	}
	public String getalocation() {
		return alocation;
	}
	public void setalocation(String alocation) {
		this.alocation = alocation;
	}
	public String getfilename() {
		return filename;
	}
	public void setfilename(String filename) {
		this.filename = filename;
	}
	public Timestamp getaDate() {
		return aDate;
	}
	public void setaDate(Timestamp aDate) {
		this.aDate = aDate;
	}
	public int getaHit() {
		return aHit;
	}
	public void setaHit(int aHit) {
		this.aHit = aHit;
	}
	public int getaGroup() {
		return aGroup;
	}
	public void setaGroup(int aGroup) {
		this.aGroup = aGroup;
	}
	public int getaStep() {
		return aStep;
	}
	public void setaStep(int aStep) {
		this.aStep = aStep;
	}
	public int getaIndent() {
		return aIndent;
	}
	public void setaIndent(int aIndent) {
		this.aIndent = aIndent;
	}
	
	
	
}
