package model.dao;

import java.util.ArrayList;
import java.util.List;

import model.domain.PhotoDTO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("uDao")
public class PhotoDAOImpl implements PhotoDAO {
	public List<String> uploadPhoto(List<String> fileNames, List fileSizes, List<String> fullPathNames, String pYear, String pMonth, String pDay, String comment, String email){
		System.out.println("PhotoDAOImpl " + fileNames + " " + fileSizes + " " + fullPathNames);
		System.out.println("업로드 갯수 : " + fileNames.size());
		
		int result;
		boolean flag = false;
		
		for(int i=0; i<fileNames.size(); i++){
			SqlSession session = null;
			try {
				session = DBUtil.getSqlSession();
				result = session.insert("photo.uploadPhoto", new PhotoDTO(fileNames.get(i), Integer.parseInt((fileSizes.get(i).toString())), fullPathNames.get(i), pYear, pMonth, pDay, comment, email));
				flag = result > 0 ? true : false;
			} finally {
				DBUtil.closeSqlSession(flag, session);
			}
		}
		System.out.println("****************************");
		return fullPathNames;
	}
	
	//사진 이름에 맞는 사진 번호
		public List<Integer> selectPhoto(List<String> fileNames){
			System.out.println("PhotoDAOImpl : selectPhoto : " + fileNames);
			List<Integer> fileNum = new ArrayList<Integer>();
			
			for(int i=0; i<fileNames.size(); i++){
				SqlSession session = null;
				try{
					session = DBUtil.getSqlSession();
					//System.out.println("--- : " + session.selectOne("photo.selectFileNum", (fileNames.get(i))));
					fileNum.add(i, Integer.parseInt(((session.selectOne("photo.selectFileNum", (fileNames.get(i)))).toString())));
				}finally{
					DBUtil.closeSqlSession(session);
				}
			}
			System.out.println("PhotoDAOImpl fileNum : " + fileNum);
			return fileNum;
		}
	
	//월별 사진 불러오기
	public List<PhotoDTO> selectPhotoByMonth (String pMonth){
		List<PhotoDTO> list = new ArrayList<PhotoDTO>();
				
		SqlSession session = null;
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("photo.selectPhotoByMonth", pMonth);
		}finally{
			DBUtil.closeSqlSession(session);
		}
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i));
		}
		return list;
	}
	
	//연도별 사진 불러오기
		public List<PhotoDTO> selectPhotoByYear (String pYear){
			List<PhotoDTO> list = new ArrayList<PhotoDTO>();
					
			SqlSession session = null;
			try{
				session = DBUtil.getSqlSession();
				list = session.selectList("photo.selectPhotoByYear", pYear);
			}finally{
				DBUtil.closeSqlSession(session);
			}
			for(int i=0;i<list.size();i++){
				System.out.println(list.get(i));
			}
			return list;
		}
		
		//연도, 월별 사진 불러오기
		public List<PhotoDTO> selectPhotoByYearMonth (String pYear, String pMonth){
			List<PhotoDTO> list = new ArrayList<PhotoDTO>();
					
			SqlSession session = null;
			try{
				session = DBUtil.getSqlSession();
				list = session.selectList("photo.selectPhotoByYearMonth", new PhotoDTO(pYear, pMonth));
			}finally{
				DBUtil.closeSqlSession(session);
			}
			for(int i=0;i<list.size();i++){
				System.out.println(list.get(i));
			}
			return list;
		}
		
	//사진 전체 불러오기
	public List<PhotoDTO>selectAllPhoto(String email){
		List<PhotoDTO> list = new ArrayList<PhotoDTO>();
		System.out.println("전체 사진 불러오기 !! : " + email);
		SqlSession session = null;
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("photo.selectAllPhoto", email);
		}finally{
			DBUtil.closeSqlSession(session);
		}
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i));
		}
		return list;
	}
	
	// 연도-월별 그룹화사진
	public List<PhotoDTO> selectPhotoByMonthOne(String email){
		List<PhotoDTO> list = new ArrayList<PhotoDTO>();
		System.out.println("그룹화 사진!! 월별 대표사진" + email);
		SqlSession session = null;
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("photo.selectPhotoByMonthOne", email);
		}finally{
			DBUtil.closeSqlSession(session);			
		}
		for(int i=0;i<list.size();i++){
			System.out.println("그룹화 사진!! 월별 대표사진 : "+list.get(i));
		}
		return list;
	}
	
	//hash에 맞는 사진 경로 불러오기
	public List<String> selectPhotoPath(List<Integer> photoNum){
		System.out.println("PhotoDAO에서 photoNum : " + photoNum);
		SqlSession session = null;
		List<String> fullPathNames = new ArrayList<String>();
		
		for(int i=0; i<photoNum.size(); i++){
			try{
				session = DBUtil.getSqlSession();
				fullPathNames.add(i, (session.selectOne("photo.selectPhotoPath", photoNum.get(i)).toString()));
			}finally{
				DBUtil.closeSqlSession(session);
			}
		}
		System.out.println("PhotoDAO : " + fullPathNames);
		return fullPathNames;
	}
	
}
