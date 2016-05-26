package com.spring.test.dao.impl;
 
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 
import com.spring.test.dao.LoginDao;
import com.spring.test.model.Login;
 
@Repository("LoginDao")
public class LoginDaoImpl extends SqlSessionDaoSupport implements LoginDao{
     
    @Autowired
    private SqlSession sqlSession;
 
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 
    @Override
    public List<Login> getLoginList() {
         
        return sqlSession.selectList("getLoginList");
    }
    
	@SuppressWarnings("rawtypes")
	@Override
	public List getList(Map<String, Object> paramMap) {
		return getSqlSession().selectList("main.getList");
	}
    
	@Override
	public int writeProc(Map<String, Object> paramMap) {
		return getSqlSession().insert("main.writeProc",paramMap );
	}
	public String getUserPwd(String userid) {
		return (String)getSqlSession().selectOne("main.getUserPwd",userid);
	}
 
}