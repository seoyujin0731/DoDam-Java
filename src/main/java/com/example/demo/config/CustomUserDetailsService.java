package com.example.demo.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.user.mapper.UserMapper;
import com.example.user.model.UserVo;

@Service
public class CustomUserDetailsService implements UserDetailsService {

	private static final String ROLE_PREFIX = "ROLE_";

	@Autowired
	UserMapper userMapper;

	// login 처리
	// 데이터베이스에서 권한 정보 가져옴
	@Override
	public UserDetails loadUserByUsername(String dd_user_id) throws UsernameNotFoundException {

		UserVo member = userMapper.readUser(dd_user_id);
		
		if (member != null) {
			member.setAuthorities(makeGrantedAuthority(userMapper.readAuthority(dd_user_id)));
		}
		
		return new SecurityMember(member);
	}

	private static List<GrantedAuthority> makeGrantedAuthority(List<String> roles) {
		List<GrantedAuthority> list = new ArrayList<>();
		roles.forEach(role -> list.add(new SimpleGrantedAuthority(ROLE_PREFIX + role)));
		return list;
	}

}