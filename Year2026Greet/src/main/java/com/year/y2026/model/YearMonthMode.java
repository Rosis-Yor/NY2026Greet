package com.year.y2026.model;

public class YearMonthMode {
	
	private String month;
	private String mode;
	private String monthmode;
	
	
	
	public YearMonthMode(String month, String mode) {
		super();
		this.month = month;
		this.mode = mode;
	}
	
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	
	public String getMonthMode() {
		return monthmode;
	}
	public void setMonthMode(String monthmode) {
		this.monthmode = monthmode;
	}
	
	@Override
	public String toString() {
		return "Month=" + month + ", Mode=" + mode + "\n " + monthmode;
	}
	
	
	
	
	
	

}
