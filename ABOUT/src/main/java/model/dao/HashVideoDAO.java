package model.dao;

import java.util.List;

public interface HashVideoDAO {
	void insertHash(String[] hash, List<Integer> fileNum, String id);
	List<Integer> selectHashTag(String hash, String email);
}
