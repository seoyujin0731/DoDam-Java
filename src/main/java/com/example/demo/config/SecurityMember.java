package com.example.demo.config;

import org.springframework.security.core.userdetails.User;

import com.example.user.model.UserVo;


public class SecurityMember extends User{
	
    private static final long serialVersionUID = 1L;
    
    private String ip;
    
    public SecurityMember(UserVo member) {
        super(member.getDd_user_id(), member.getDd_user_pw(), member.getAuthorities());
    }
 
    public String getIp() {
        return ip;
    }
 
    public void setIp(String ip) {
        this.ip = ip;
    }
 
}