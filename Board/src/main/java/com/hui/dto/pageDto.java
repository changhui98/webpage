package com.hui.dto;

public class pageDto {

	// 페이지 블럭을 그리기 위해 필요한 정보
	int startNo;		// 페이지 블럭 시작번호 
	int endNo;			// 페이지 블럭 끝번호
	int realEndNo;		// 게시물의 끝 페이지 번호(총 게시물의 수/페이지당 게시물 수)
	boolean prev, next;	// 이전, 다음버튼 (true 보여주기)
	
	
	// 위의 정보들을 세팅하기 위해 필요한 값 
	int totalCnt;		// 총 게시물의 수
	Criteria cri;		// 요청 페이지번호, 페이지당 게시물 수
	int blockAmount =10;// 페이지블럭에 보여줄 페이지의 수
	
	
	public int getStartNo() {
		return startNo;
	}
	public void setStartNo(int startNo) {
		this.startNo = startNo;
	}
	public int getEndNo() {
		return endNo;
	}
	public void setEndNo(int endNo) {
		this.endNo = endNo;
	}
	public int getRealEndNo() {
		return realEndNo;
	}
	public void setRealEndNo(int realEndNo) {
		this.realEndNo = realEndNo;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public Criteria getCri() {
		return cri;
	}
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	public int getBlockAmount() {
		return blockAmount;
	}
	public void setBlockAmount(int blockAmount) {
		this.blockAmount = blockAmount;
	}
	
	
	
	
	
}
