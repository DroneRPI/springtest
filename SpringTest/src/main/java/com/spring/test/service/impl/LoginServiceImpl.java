package com.spring.test.service.impl;
 
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;
 
import com.spring.test.dao.LoginDao;
import com.spring.test.model.Login;
import com.spring.test.service.LoginService;
 
@Service("LoginService")
public class LoginServiceImpl implements LoginService {
     
    @Resource(name="LoginDao")
    private LoginDao LoginDao;
 
    @Override
    public List<Login> getLoginList() {
        return LoginDao.getLoginList();
    }
    
	@SuppressWarnings("rawtypes")
	@Override
	public List getList(Map<String, Object> paramMap) {
		return LoginDao.getList(paramMap);
	}

	@Override
	public int writeProc(Map<String, Object> paramMap) {
		return LoginDao.writeProc(paramMap);
	}
 
}