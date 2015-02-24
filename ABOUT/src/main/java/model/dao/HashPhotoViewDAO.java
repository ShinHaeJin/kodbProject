package model.dao;

import java.util.List;

import model.domain.HashPhotoViewDTO;

public interface HashPhotoViewDAO {
	List<HashPhotoViewDTO> selectHashTag(String hash, String email);
}
