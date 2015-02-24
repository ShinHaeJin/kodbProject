package model.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import model.dao.PhotoDAO;
import model.dao.VideoDAO;
import model.domain.PhotoDTO;
import model.domain.VideoDTO;

import org.springframework.stereotype.Service;


@Service("sService")
public class sServiceImpl implements sService{
	@Resource(name="uDao")
	private PhotoDAO uDao;
	
	@Resource(name="vDao")
	private VideoDAO vDao;
	//******PHOTO*********	
	//월별사진
	public List<PhotoDTO> selectPhotoByMonth(String month){
		List<PhotoDTO> list = new ArrayList<PhotoDTO>();
		list = uDao.selectPhotoByMonth(month);
		return list;
	}
	//연도별사진
	public List<PhotoDTO> selectPhotoByYear (String year){
		List<PhotoDTO> list = new ArrayList<PhotoDTO>();
		list = uDao.selectPhotoByYear(year);
		return list;
	}
	//모든 사진
	public List<PhotoDTO>selectAllPhoto(String email){
		List<PhotoDTO> list = new ArrayList<PhotoDTO>();
		list = uDao.selectAllPhoto(email);
		return list;
	}
	//같은 연도 월 별 사진 
	public List<PhotoDTO> selectPhotoByYearMonth(String year, String month){
		List<PhotoDTO> list = new ArrayList<PhotoDTO>();
		list = uDao.selectPhotoByYearMonth(year,month);
		return list;
	}
	//월별 그룹화 사진
	public List<PhotoDTO> selectPhotoByMonthOne(String email){
		List<PhotoDTO> list = new ArrayList<PhotoDTO>();
		list = uDao.selectPhotoByMonthOne(email);
		return list;
	}
	
	
	//******VIDEO*********	
	//모든 비디오
	public List<VideoDTO> selectAllVideo(String email){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		list = vDao.selectAllVideo(email);
		return list;
	}
	//같은 연도-월별 비디오
	public List<VideoDTO> selectVideoByYearMonth(String year, String month){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		list = vDao.selectVideoByYearMonth(year,month);
		return list;
	}
	//월별비디오
	public List<VideoDTO> selectVideoByMonth(String month){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		list = vDao.selectVideoByMonth(month);
		return list;
	}
	//연도별비디오
	public List<VideoDTO> selectVideoByYear (String year){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		list = vDao.selectVideoByYear(year);
		return list;
	}
	//월별 그룹화 사진
	public List<VideoDTO> selectVideoByMonthOne(String email){
		List<VideoDTO> list = new ArrayList<VideoDTO>();
		list = vDao.selectVideoByMonthOne(email);
		return list;
	}

}
		
		/*		JSONObject object = new JSONObject();
		List<String> result = new ArrayList<String>();
		
		try{*/
		//	list = uDao.selectPhotoByMoth(month);
/*			for(int i =0;i<list.size();i++){
				object.put("name", list.get(i).getpName());
				object.put("path", list.get(i).getpPath());
				object.put("date", list.get(i).getpDate());
				object.put("comment", list.get(i).getpComment());
				result.add(object.toJSONString());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}*/

