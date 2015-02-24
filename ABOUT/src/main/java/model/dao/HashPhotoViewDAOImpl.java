package model.dao;

import java.util.ArrayList;
import java.util.List;

import model.domain.HashPhotoViewDTO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("hpvDao")
public class HashPhotoViewDAOImpl implements HashPhotoViewDAO{
	
	public List<HashPhotoViewDTO> selectHashTag(String hash, String email){
		System.out.println("HashPhotoViewDao : " + hash + email);
		List<HashPhotoViewDTO> list = new ArrayList<HashPhotoViewDTO>();
		HashPhotoViewDTO hpv = new HashPhotoViewDTO(email, hash.trim());
		System.out.println("HashPhotoViewDTO : " + hpv);
		
		SqlSession session = null;
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("hashphotoview.selectHashTag", hpv);
		}finally{
			DBUtil.closeSqlSession(session);
		}
		System.out.println("hashPhotoViewDao list: " + list);
		return list;
	}
}
