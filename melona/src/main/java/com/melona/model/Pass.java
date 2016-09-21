package com.melona.model;

public class Pass {

	private int passNo;
	private int downloadCount;
	private String name;
	private int price;
	private ShoppingList shopping;
	
	public Pass() {}
	
	public int getPassNo() {
		return passNo;
	}
	
	public void setPassNo(int passNo) {
		this.passNo = passNo;
	}
	
	public int getDownloadCount() {
		return downloadCount;
	}
	
	public void setDownloadCount(int downloadCount) {
		this.downloadCount = downloadCount;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public ShoppingList getShopping() {
		return shopping;
	}

	public void setShopping(ShoppingList shopping) {
		this.shopping = shopping;
	}
	
}
