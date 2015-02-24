package model.dao;

import java.util.List;


public interface DocumentDAO {
	List<String> uploadDocument(List<String> fileNames, List fileSizes, List<String> fullPathNames);
}
