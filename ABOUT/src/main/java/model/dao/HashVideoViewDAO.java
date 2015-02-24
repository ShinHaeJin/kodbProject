package model.dao;

import java.util.List;

import model.domain.HashVideoViewDTO;

public interface HashVideoViewDAO {
	List<HashVideoViewDTO> selectHashTag(String hash, String email);
}
