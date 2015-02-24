package model.dao;

import java.util.List;

import model.domain.VideoDTO;

public interface VideoDAO {
	List<String> uploadVideo(List<String> fileNames, List fileSizes, List<String> fullPathNames, String vYear, String vMonth, String vDay, String comment, String email);
	List<Integer> selectVideo(List<String> fileNames);
	List<VideoDTO> selectVideoByYear(String vYear);
	List<VideoDTO> selectVideoByYearMonth(String vYear, String vMonth);
	List<VideoDTO> selectVideoByMonth(String vMonth);
	List<VideoDTO> selectAllVideo(String email);
	List<String> selectVideoPath(List<Integer> videoNum);
	List<VideoDTO> selectVideoByMonthOne(String email);
}
