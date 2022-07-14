package edu.spring.ex02.domain;

public class Cart {
	private int cid;
	private String userid;
	private int pid;
	private int ccount;
	
	public Cart() {}
	
	public Cart(int cid, String userid, int pid, int ccount) {
		this.cid = cid;
		this.userid = userid;
		this.pid = pid;
		this.ccount = ccount;
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
	
	@Override
	public String toString() {
		return String.format(
				"Cart{cid:%d, userid:%s, pid:%d, ccount:%d}", 
				this.cid, this.userid, this.pid, this.ccount);
	}
}