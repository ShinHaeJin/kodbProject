package model.dao;

import java.util.List;

import model.domain.PhotoDTO;

public interface PhotoDAO {
	List<String> uploadPhoto(List<String> fileNames, List fileSizes, List<String> fullPathNames, String pYear, String pMonth, String pDay, String comment, String id);
	List<Integer> selectPhoto(List<String> fileNames);
	List<PhotoDTO> selectPhotoByMonth (String month);
	List<PhotoDTO> selectPhotoByYear (String year);
	List<PhotoDTO> selectAllPhoto(String email);
	List<PhotoDTO> selectPhotoByYearMonth(String year, String month);
	List<PhotoDTO> selectPhotoByMonthOne(String email);
	List<String> selectPhotoPath(List<Integer> photoNum);	//hashTag에 걸린 photo 경로
}
