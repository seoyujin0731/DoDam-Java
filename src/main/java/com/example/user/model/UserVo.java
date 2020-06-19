package com.example.user.model;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;


public class UserVo {

	private String dd_user_id;
	private String dd_user_pw;
	private String dd_user_email;
	private String dd_user_tel;
	private String dd_user_brith;
	private String dd_user_location;
	private String dd_user_gender;
	private String dd_user_del;
	private boolean isaccountnonlocked;
	private boolean isaccountnonexpired;
	private boolean iscredentialnonexpired;
	private boolean isenabled;
	private String dd_user_key;

	private Collection<? extends GrantedAuthority> authorities;

	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	
	

	public String getDd_user_id() {
		return dd_user_id;
	}

	public void setDd_user_id(String dd_user_id) {
		this.dd_user_id = dd_user_id;
	}

	public String getDd_user_pw() {
		return dd_user_pw;
	}

	public void setDd_user_pw(String dd_user_pw) {
		this.dd_user_pw = dd_user_pw;
	}

	public String getDd_user_email() {
		return dd_user_email;
	}

	public void setDd_user_email(String dd_user_email) {
		this.dd_user_email = dd_user_email;
	}

	public String getDd_user_tel() {
		return dd_user_tel;
	}

	public void setDd_user_tel(String dd_user_tel) {
		this.dd_user_tel = dd_user_tel;
	}

	public String getDd_user_brith() {
		return dd_user_brith;
	}

	public void setDd_user_brith(String dd_user_brith) {
		this.dd_user_brith = dd_user_brith;
	}

	public String getDd_user_location() {
		return dd_user_location;
	}

	public void setDd_user_location(String dd_user_location) {
		this.dd_user_location = dd_user_location;
	}

	public String getDd_user_gender() {
		return dd_user_gender;
	}

	public void setDd_user_gender(String dd_user_gender) {
		this.dd_user_gender = dd_user_gender;
	}

	public String getDd_user_del() {
		return dd_user_del;
	}

	public void setDd_user_del(String dd_user_del) {
		this.dd_user_del = dd_user_del;
	}

	public boolean isIsaccountnonlocked() {
		return isaccountnonlocked;
	}

	public void setIsaccountnonlocked(boolean isaccountnonlocked) {
		this.isaccountnonlocked = isaccountnonlocked;
	}

	public boolean isIsaccountnonexpired() {
		return isaccountnonexpired;
	}

	public void setIsaccountnonexpired(boolean isaccountnonexpired) {
		this.isaccountnonexpired = isaccountnonexpired;
	}

	public boolean isIscredentialnonexpired() {
		return iscredentialnonexpired;
	}

	public void setIscredentialnonexpired(boolean iscredentialnonexpired) {
		this.iscredentialnonexpired = iscredentialnonexpired;
	}

	public boolean isIsenabled() {
		return isenabled;
	}

	public void setIsenabled(boolean isenabled) {
		this.isenabled = isenabled;
	}

	public String getDd_user_key() {
		return dd_user_key;
	}

	public void setDd_user_key(String dd_user_key) {
		this.dd_user_key = dd_user_key;
	}

	@Override
	public String toString() {
		return "UserVo [dd_user_id=" + dd_user_id + ", dd_user_pw=" + dd_user_pw + ", dd_user_email=" + dd_user_email
				+ ", dd_user_tel=" + dd_user_tel + ", dd_user_brith=" + dd_user_brith + ", dd_user_location="
				+ dd_user_location + ", dd_user_gender=" + dd_user_gender + ", dd_user_del=" + dd_user_del
				+ ", isaccountnonlocked=" + isaccountnonlocked + ", isaccountnonexpired=" + isaccountnonexpired
				+ ", iscredentialnonexpired=" + iscredentialnonexpired + ", isenabled=" + isenabled + ", dd_user_key="
				+ dd_user_key + ", authorities=" + authorities + "]";
	}

}
