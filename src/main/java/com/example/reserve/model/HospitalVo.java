package com.example.reserve.model;

public class HospitalVo {

	private int dd_hospital_no;
	private String dd_hospital_name;
	private String dd_hospital_tel;
	private String dd_hospital_address;
	public int getDd_hospital_no() {
		return dd_hospital_no;
	}
	public void setDd_hospital_no(int dd_hospital_no) {
		this.dd_hospital_no = dd_hospital_no;
	}
	public String getDd_hospital_name() {
		return dd_hospital_name;
	}
	public void setDd_hospital_name(String dd_hospital_name) {
		this.dd_hospital_name = dd_hospital_name;
	}
	public String getDd_hospital_tel() {
		return dd_hospital_tel;
	}
	public void setDd_hospital_tel(String dd_hospital_tel) {
		this.dd_hospital_tel = dd_hospital_tel;
	}
	public String getDd_hospital_address() {
		return dd_hospital_address;
	}
	public void setDd_hospital_address(String dd_hospital_address) {
		this.dd_hospital_address = dd_hospital_address;
	}
	@Override
	public String toString() {
		return "HospitalVo [dd_hospital_no=" + dd_hospital_no + ", dd_hospital_name=" + dd_hospital_name
				+ ", dd_hospital_tel=" + dd_hospital_tel + ", dd_hospital_address=" + dd_hospital_address + "]";
	}



}
