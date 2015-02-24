package model.dao;

import java.util.ArrayList;
import java.util.List;

import model.domain.HashVideoDTO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("hvDao")
public class HashVideoDAOImpl implements HashVideoDAO {
	public void insertHash(String[] hash, List<Integer> fileNum, String email){
		SqlSession session = null;
		int result = 0;
		boolean flag = false;
		
		for(int i=1; i<hash.length; i++){
			try{
				session = DBUtil.getSqlSession();
				for(int j=0; j<fileNum.size(); j++){
					result = session.insert("hashvideo.insertHash", new HashVideoDTO(hash[i].trim(), fileNum.get(j), email));
					flag = result > 0 ? true : false;
				}
			}finally{
				DBUtil.closeSqlSession(flag, session);
			}
		}
	}
	
	//hash 선택
	public List<Integer> selectHashTag(String hash, String email){
		SqlSession session = null;
		System.out.println("HashVideoDao에서 hash : " + hash);
		System.out.println("hdhdh : " + email);
		HashVideoDTO hv = new HashVideoDTO(hash, email);
		System.out.println("hv : " + hv);
		
		List<Integer> videoNum = new ArrayList<Integer>();
		try{
			session = DBUtil.getSqlSession();
			videoNum = session.selectList("hashvideo.selectHashTag", hv);
		}finally{
			DBUtil.closeSqlSession(session);
		}
		System.out.println("videoNum : " + videoNum);
		return videoNum;
	}
}
