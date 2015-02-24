package model.dao;

import java.util.ArrayList;
import java.util.List;

import model.domain.HashPhotoDTO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("hpDao")
public class HashPhotoDAOImpl implements HashPhotoDAO{
	public void insertHash(String[] hash, List<Integer> fileNum, String email){
		SqlSession session = null;
		int result = 0;
		boolean flag = false;
	
		
		for(int i=1; i<hash.length; i++){
			try{
				session = DBUtil.getSqlSession();
				for(int j=0; j<fileNum.size(); j++){
					result = session.insert("hashphoto.insertHash", new HashPhotoDTO(hash[i].trim(), fileNum.get(j), email));
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
		System.out.println("HashPhotoDao에서 hash : " + hash);
		HashPhotoDTO hp = new HashPhotoDTO(hash.trim(), email);
		List<Integer> photoNum = new ArrayList<Integer>();
		try{
			session = DBUtil.getSqlSession();
			photoNum = session.selectList("hashphoto.selectHashTag", hash.trim());
		}finally{
			DBUtil.closeSqlSession(session);
		}
		System.out.println("photoNum : " + photoNum);
		return photoNum;
	}
}
