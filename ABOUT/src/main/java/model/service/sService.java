package model.service;

import java.util.List;

import model.domain.PhotoDTO;
import model.domain.VideoDTO;


public interface sService {
	List<PhotoDTO> selectPhotoByMonth(String month);
	List<PhotoDTO> selectPhotoByYear (String year);
	List<PhotoDTO> selectAllPhoto(String email); 
	List<PhotoDTO> selectPhotoByYearMonth(String year, String month); 
	List<PhotoDTO> selectPhotoByMonthOne(String email); 
	
	List<VideoDTO> selectAllVideo(String email);
	List<VideoDTO> selectVideoByYear (String year); 
	List<VideoDTO> selectVideoByMonth(String month); 
	List<VideoDTO> selectVideoByYearMonth(String year, String month); 
	List<VideoDTO> selectVideoByMonthOne(String email);
}
