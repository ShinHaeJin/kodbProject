package model.dao;

import model.domain.MemberDTO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("mDao")
public class MemberDAOImpl implements MemberDAO{
	//login
	@Override
	public MemberDTO checkId(String email, String pw) {
		System.out.println("MemeberDAOImple! " + email + " " + pw);
		SqlSession session = null;
		MemberDTO member = new MemberDTO(email, pw);
		try {
			session = DBUtil.getSqlSession();
			System.out.println("Member는 " + member);
			member = session.selectOne("member.checkId", member);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return member;
	}
	
	//email 중복검사
	@Override
	public MemberDTO checkMember(String email) {
		SqlSession session = null;
		MemberDTO member = null;
		try {
			session = DBUtil.getSqlSession();
			System.out.println(email);
			member = session.selectOne("member.checkMember", email);
		} finally {
			DBUtil.closeSqlSession(session);
		}
		return member;
	}
	
	//insert
/*	public boolean insertMember(String email, String name, String pw) throws SQLException{
		SqlSession session = null;
		boolean result = false;
		try{
			session = DBUtil.getSqlSession(true);
			if(session.insert("member.insertMember", new MemberDTO(email, name, pw)) == 1){
				result = true;
			}
		}finally{
			session.close();
		}
		return result;
	}*/
	@Override
	public int insertMember(MemberDTO member) {
		SqlSession session = null;
		boolean flag = false;
		int result = 0;
		try {
			session = DBUtil.getSqlSession();
			result = session.insert("member.insertMember", member);
			flag = result > 0 ? true : false;
		} finally {
			DBUtil.closeSqlSession(flag, session);
		}
		return result;
	}

}
