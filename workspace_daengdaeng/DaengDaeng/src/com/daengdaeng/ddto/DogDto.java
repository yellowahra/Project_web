package com.daengdaeng.ddto;

public class DogDto {
	int dId;
	String cid;
	String dname;
	String dfilename;
	String dbd;
	String dad;
	String dage;
	String dbreed;
	String dgender;
	String dweight;
	String didnum;
	
	
	public DogDto(int dId, String cid, String dname, String dfilename, String dbd, String dad, 
			String dage, String dbreed, String dgender, String dweight,	String didnum) {

		this.dId = dId;
		this.cid = cid;
		this.dname =dname;
 		this.dfilename = dfilename;
 		this.dbd=dbd;
 		this.dad=dad;
 		this.dage=dage;
 		this.dbreed=dbreed;
 		this.dgender=dgender;
 		this.dweight=dweight;
 		this.didnum = didnum;
	}
		
	public int getdId() {
		return dId;
	}
	public void setaId(int dId) {
		this.dId = dId;
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
	public String getdfilename() {
		return dfilename;
	}
	public void setdfilename(String dfilename) {
		this.dfilename = dfilename;
	}
	public String getdbd() {
		return dbd;
	}
	public void setdbd(String dbd) {
		this.dbd = dbd;
	}
	public String getdad() {
		return dad;
	}
	public void setdad(String dad) {
		this.dad = dad;
	}
	public String getdage() {
		return dage;
	}
	public void setdage(String dage) {
		this.dage = dage;
	}
	
	public String getdbreed() {
		return dbreed;
	}
	public void setdbreed(String dbreed) {
		this.dbreed = dbreed;
	}
	
	public String getdgender() {
		return dgender;
	}
	public void setagender(String dgender) {
		this.dgender = dgender;
	}

	public String getdweight() {
		return dweight;
	}
	public void setdweight(String dweight) {
		this.dweight = dweight;
	}
	public String getdidnum() {
		return didnum;
	}
	public void setdidnum(String didnum) {
		this.didnum = didnum;
	}
	
}
