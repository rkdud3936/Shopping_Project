package edu.spring.ex02.domain;

public class CartListVO {
	private int cid;
	private String userid;
	private int pid;
	private int ccount;
	
	private String pname;
	private int pprice;
	private String pimage1;
	
	public CartListVO() {}
	
	public CartListVO(int cid, String userid, int pid, int ccount, String pname, int pprice, String pimage1) {
		this.cid = cid;
		this.userid = userid;
		this.pid = pid;
		this.ccount = ccount;
		
		this.pname = pname;
		this.pprice = pprice;
		this.pimage1 = pimage1;

	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getCcount() {
		return ccount;
	}

	public void setCcount(int ccount) {
		this.ccount = ccount;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getPimage1() {
		return pimage1;
	}

	public void setPimage1(String pimage1) {
		this.pimage1 = pimage1;
	}
	
	@Override
	public String toString() {
		return String.format(
				"CartListVO{cid:%d, userid:%s, pid:%d, ccount:%d, pname:%s, pprice:%d, pimage1:%s}", 
				this.cid, this.userid, this.pid, this.ccount, this.pname, this.pprice, this.pimage1);
	}
	
}
