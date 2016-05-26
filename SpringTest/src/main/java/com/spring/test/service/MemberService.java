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
		
		//�α��� ���̵�� �н����带 ������ ����.
		String userPwd = LoginDao.getUserPwd(username);
		
		//"ROLE_USER" �� �̸����� ������ �����Ѵ�. 
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>(); 
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
	 
		//�α��� ������ �����Ѵ�
		UserDetails user = new User(username, userPwd, roles);	
		return user;
	}
	
}


