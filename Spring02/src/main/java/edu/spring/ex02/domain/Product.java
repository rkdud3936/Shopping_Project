package edu.spring.ex02.domain;

import java.util.Date;

public class Product {
	private int pid;
	private String pname;
	private int pprice;
	private String pimage1;
	private String pimage2;
	private String pimage3;
	private Date prdate;
	private String pdetail;


	public Product() {}


	public Product(int pid, String pname, int pprice, String pimage1, String pimage2, String pimage3, Date prdate,
			String pdetail) {
		this.pid = pid;
		this.pname = pname;
		this.pprice = pprice;
		this.pimage1 = pimage1;
		this.pimage2 = pimage2;
		this.pimage3 = pimage3;
		this.prdate = prdate;
		this.pdetail = pdetail;
	}


	public int getPid() {
		return pid;
	}


	public void setPid(int pid) {
		this.pid = pid;
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


	public String getPimage2() {
		return pimage2;
	}


	public void setPimage2(String pimage2) {
		this.pimage2 = pimage2;
	}


	public String getPimage3() {
		return pimage3;
	}


	public void setPimage3(String pimage3) {
		this.pimage3 = pimage3;
	}


	public Date getPrdate() {
		return prdate;
	}


	public void setPrdate(Date prdate) {
		this.prdate = prdate;
	}


	public String getPdetail() {
		return pdetail;
	}


	public void setPdetail(String pdetail) {
		this.pdetail = pdetail;
	}
	
	@Override
	public String toString() {
		return String.format(
				"Product{pid:%d, pname:%s, pprice:%d, pimage1:%s, pimage2:%s, pimage3:%s, prdate:%s, pdetail:%s}", 
				this.pid, this.pname, this.pprice, this.pimage1, 
				this.pimage2, this.pimage3, this.prdate, this.pdetail);
	}
}