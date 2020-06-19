package com.example.reserve.model;

public class ReserveVo {

	private int dd_reserve_no;
	private String dd_user_id;
	private int dd_hospital_no;
	private String dd_reserve_date;
	private String dd_reserve_check;
	
	public int getDd_reserve_no() {
		return dd_reserve_no;
	}
	public void setDd_reserve_no(int dd_reserve_no) {
		this.dd_reserve_no = dd_reserve_no;
	}
	public String getDd_user_id() {
		return dd_user_id;
	}
	public void setDd_user_id(String dd_user_id) {
		this.dd_user_id = dd_user_id;
	}
	public int getDd_hospital_no() {
		return dd_hospital_no;
	}
	public void setDd_hospital_no(int dd_hospital_no) {
		this.dd_hospital_no = dd_hospital_no;
	}
	public String getDd_reserve_date() {
		return dd_reserve_date;
	}
	public void setDd_reserve_date(String dd_reserve_date) {
		this.dd_reserve_date = dd_reserve_date;
	}
	public String getDd_reserve_check() {
		return dd_reserve_check;
	}
	public void setDd_reserve_check(String dd_reserve_check) {
		this.dd_reserve_check = dd_reserve_check;
	}
	
	@Override
	public String toString() {
		return "ReserveVo [dd_reserve_no=" + dd_reserve_no + ", dd_user_id=" + dd_user_id + ", dd_hospital_no="
				+ dd_hospital_no + ", dd_reserve_date=" + dd_reserve_date + ", dd_reserve_check=" + dd_reserve_check
				+ "]";
	}
	
	
	
}
