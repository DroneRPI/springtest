package com.spring.test.service;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import com.spring.test.dao.LoginDao;


public class MemberService implements UserDetailsService  {
	
	private LoginDao LoginDao;
	
	public void setLoginDao(LoginDao LoginDao) {
		this.LoginDao = LoginDao;
	}

	
	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		
		//로그인 아이디로 패스워드를 가지고 오다.
		String userPwd = LoginDao.getUserPwd(username);
		
		//"ROLE_USER" 란 이름으로 권한을 설정한다. 
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>(); 
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
	 
		//로그인 정보를 리컨한다
		UserDetails user = new User(username, userPwd, roles);	
		return user;
	}
	
}


