package com.example.reserve.model;

public class Hospital_reserveVo {

   private int dd_reserve_no;
   private String dd_reserve_date;
   private String dd_hospital_name;
   private String dd_user_id;
   private int no;
   private String dd_reserve_check;
   
   
public int getDd_reserve_no() {
	return dd_reserve_no;
}
public void setDd_reserve_no(int dd_reserve_no) {
	this.dd_reserve_no = dd_reserve_no;
}
public String getDd_reserve_date() {
	return dd_reserve_date;
}
public void setDd_reserve_date(String dd_reserve_date) {
	this.dd_reserve_date = dd_reserve_date;
}
public String getDd_hospital_name() {
	return dd_hospital_name;
}
public void setDd_hospital_name(String dd_hospital_name) {
	this.dd_hospital_name = dd_hospital_name;
}
public String getDd_user_id() {
	return dd_user_id;
}
public void setDd_user_id(String dd_user_id) {
	this.dd_user_id = dd_user_id;
}
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public String getDd_reserve_check() {
	return dd_reserve_check;
}
public void setDd_reserve_check(String dd_reserve_check) {
	this.dd_reserve_check = dd_reserve_check;
}
@Override
public String toString() {
	return "Hospital_reserveVo [dd_reserve_no=" + dd_reserve_no + ", dd_reserve_date=" + dd_reserve_date
			+ ", dd_hospital_name=" + dd_hospital_name + ", dd_user_id=" + dd_user_id + ", no=" + no
			+ ", dd_reserve_check=" + dd_reserve_check + "]";
}

  





}