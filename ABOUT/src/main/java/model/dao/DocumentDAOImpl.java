package model.dao;

import java.util.List;

import model.domain.DocumentDTO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import util.DBUtil;

@Repository("dDao")
public class DocumentDAOImpl implements DocumentDAO{
	public List<String> uploadDocument(List<String> fileNames, List fileSizes, List<String> fullPathNames){
		System.out.println("DocumentDAOImpl " + fileNames + " " + fileSizes + " " + fullPathNames + " ");
		System.out.println("업로드 갯수 : " + fileNames.size());
		
		int result;
		boolean flag = false;
		
		for(int i=0; i<fileNames.size(); i++){
			SqlSession session = null;
			try {
				session = DBUtil.getSqlSession();
				result = session.insert("document.uploadDocument", new DocumentDTO(fileNames.get(i), Integer.parseInt((fileSizes.get(i).toString())), fullPathNames.get(i)));
				//System.out.println("result : " + result);
				flag = result > 0 ? true : false;
			} finally {
				DBUtil.closeSqlSession(flag, session);
			}
		}
		return fullPathNames;
	}
}
