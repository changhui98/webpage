package com.hui.dto;

public class Criteria {

	private int pageNo=1;   ;
	private int amount=15;   ;
	
	private int startNum ;
	private int endNum   ;
	
	public Criteria() {
		
	}
	
	
	public Criteria(String pageNo, String amount) {
		
		if(pageNo != null && !"".equals(pageNo)) {
			this.pageNo = Integer.parseInt(pageNo);
		}
		
		if(amount != null && !"".equals(amount)) {
			this.amount = Integer.parseInt(amount);
		}
		
		endNum = this.pageNo * this.amount;
		startNum = endNum - (this.amount -1);
		
		
	}
	
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	
	
}
