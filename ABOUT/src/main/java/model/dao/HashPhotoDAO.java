package model.dao;

import java.util.List;

public interface HashPhotoDAO {
	void insertHash(String[] hash, List<Integer> fileNum, String email);
	List<Integer> selectHashTag(String hash, String email);
}
