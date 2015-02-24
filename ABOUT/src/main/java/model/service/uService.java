package model.service;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.web.multipart.MultipartFile;

public interface uService {
	List<String> uploadPhoto(ServletContext scontext, List<MultipartFile> file, String hidden, String pYear, String pMonth, String pDay, String comment, String id, String hash);
	List<Object> selectHashTag(String hash, String email);
}
