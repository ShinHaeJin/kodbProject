package model.dao;

import java.util.ArrayList;
import java.util.List;

import model.domain.PhotoDTO;
import model.domain.VideoDTO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("vDao")
public class VideoDAOImpl implements VideoDAO {
	public List<String> uploadVideo(List<String> fileNames, List fileSizes,
			List<String> fullPathNames, String vYear, String vMonth,
			String vDay, String comment, String email) {
		System.out.println("VideoDAOImpl " + fileNames + " " + fileSizes + " "
				+ fullPathNames);
		System.out.println("업로드 갯수 : " + fileNames.size());

		int result;
		boolean flag = false;

		for (int i = 0; i < fileNames.size(); i++) {
			SqlSession session = null;
			try {
				session = DBUtil.getSqlSession();
				result = session.insert(
						"video.uploadVideo",
						new VideoDTO(fileNames.get(i), Integer
								.parseInt((fileSizes.get(i).toString())),
								fullPathNames.get(i), vYear, vMonth, vDay,
								comment, email));
				// System.out.println("result : " + result);
				flag = result > 0 ? true : false;
			} finally {
				DBUtil.closeSqlSession(flag, session);
			}
		}
		return fullPathNames;
	}

	// 영상 이름에 맞는 사진 번호
	public List<Integer> selectVideo(List<String> fileNames) {
		List<Integer> fileNum = new ArrayList<Integer>();

		for (int i = 0; i < fileNames.size(); i++) {
			SqlSession session = null;
			try {
				session = DBUtil.getSqlSession();
				fileNum.add(i,
						Integer.parseInt(((session.selectOne(
								"video.selectFileNum", (fileNames.get(i))))
								.toString())));
			} finally {
				DBUtil.closeSqlSession(session);
			}
		}
		System.out.println("---- " + fileNum);
		return fileNum;
	}
	
	//연도-월 별 영상 불러오기
	public List<VideoDTO> selectVideoByYearMonth(String vYear, String vMonth){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		
		SqlSession session = null;
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("video.selectVideoByYearMonth", new VideoDTO(vYear, vMonth));
		}finally{
			DBUtil.closeSqlSession(session);
		}
		for(int i=0;i<list.size();i++){
			System.out.println("연도-월별 비디오 데이터 : " +list.get(i));
		}
		return list;

	}
	//연도별 비디오 불러오기
	public List<VideoDTO> selectVideoByYear(String vYear){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		
		SqlSession session = null;
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("video.selectVideByYear", vYear);
		}finally{
			DBUtil.closeSqlSession(session);
		}
		for(int i=0;i<list.size();i++){
			System.out.println("연도별 비디오 데이터 : " +list.get(i));
		}
		return list;
	}
	//월별 비디오 불러오기
	public List<VideoDTO> selectVideoByMonth(String vMonth){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		System.out.println("DAOvMonth :" + vMonth);
		SqlSession session = null;
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("video.selectVideByMonth", vMonth);
		}finally{
			DBUtil.closeSqlSession(session);
		}
		for(int i=0;i<list.size();i++){
			System.out.println("월별 비디오 데이터 : " +list.get(i));
		}
		return list;
	}
	//비디오 전체 불러오기
	public List<VideoDTO> selectAllVideo(String email){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		System.out.println("전체 비디오 불러오기 !! : " + email);
		SqlSession session = null;
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("video.selectAllVideo", email);
		}finally{
			DBUtil.closeSqlSession(session);
		}
		for(int i=0;i<list.size();i++){
			System.out.println("전체 비디오 데이터 : " +list.get(i));
		}
		return list;
	}
	
	// 연도-월별 그룹화비디오
	public List<VideoDTO> selectVideoByMonthOne(String email){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		System.out.println("그룹화 비디오!! 월별 대표비디오" + email);
		SqlSession session = null;
		try{
			session = DBUtil.getSqlSession();
			list = session.selectList("video.selectVideoByMonthOne", email);
		}finally{
			DBUtil.closeSqlSession(session);			
		}
		for(int i=0;i<list.size();i++){
			System.out.println("그룹화 비디오!! 월별 대표비디오 : "+list.get(i));
		}
		return list;
	}

	//hash에 맞는 영상 경로
	public List<String> selectVideoPath(List<Integer> videoNum){
		System.out.println("VideoDAO에서 photoNum : " + videoNum);
		SqlSession session = null;
		List<String> fullPathNames = new ArrayList<String>();
		
		for(int i=0; i<videoNum.size(); i++){
			try{
				session = DBUtil.getSqlSession();
				fullPathNames.add(i, (session.selectOne("video.selectVideoPath", videoNum.get(i)).toString()));
			}finally{
				DBUtil.closeSqlSession(session);
			}
		}
		System.out.println("VideoDAO : " + fullPathNames);
		return fullPathNames;
	}

	
}
