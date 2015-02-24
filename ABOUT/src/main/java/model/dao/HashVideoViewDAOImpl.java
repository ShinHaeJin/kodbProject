package model.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import model.domain.HashVideoViewDTO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("hvvDao")
public class HashVideoViewDAOImpl implements HashVideoViewDAO {
	public List<HashVideoViewDTO> selectHashTag(String hash, String email){
		System.out.println("hashvideoviewDao : " + hash + " " + email);
		List<HashVideoViewDTO> list = new ArrayList<HashVideoViewDTO>();
		HashVideoViewDTO hvv = new HashVideoViewDTO(email, hash.trim());
		
		SqlSession session = null;
		
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("hashvideoview.selectHashTag", hvv);
		}finally{
			DBUtil.closeSqlSession(session);
		}
		System.out.println("HashVideoViewDao : " + list);
		return list;
	}
}
